function [obj] = configureConstraints(obj, varargin)
    % configureConstraints - register constraints
    %
    % Copyright 2014-2015 Texas A&M University AMBER Lab
    % Author: Ayonga Hereid <ayonga@tamu.edu>
    constraints = cell(obj.nDomain,1);
    
    %% Unique Contraints 
    
    % Store useful domain names
    RightStance = obj.domains{1};
   
    %% Right Stance
    
    % Initialize stance foot to [0;0]
    h_des = [0,0];
    RightStance = addConstraint(RightStance,'Nonlinear-Equality',...
        'h0',2,1,...
        {{'h'}},-5e-6,5e-6,h_des);
    
    % Average Step Velocity
    velocity = 0.5;
    deps_1 = RightStance.optVarIndices.q(1,:);
    deps_2 = RightStance.optVarIndices.q(end,:);
    deps_3 = RightStance.optVarIndices.t(end,:);
    RightStance = addConstraint(RightStance,'Inter-Domain-Nonlinear',...
        'averageStepVelocity',1,RightStance.nNode,...
        {deps_1,deps_2,deps_3},-5e-6+velocity,5e-6+velocity);

    % Periodicity
    % qend - qbegin = 0
    deps_1 = [RightStance.optVarIndices.qend(end,:),...
              RightStance.optVarIndices.dqend(end,:)];
    deps_2 = [RightStance.optVarIndices.q(1,:),...
              RightStance.optVarIndices.dq(1,:)];
    RightStance = addConstraint(RightStance,'Inter-Domain-Nonlinear',...
        'periodicity',2*5,RightStance.nNode,{deps_1, deps_2},-5e-4,5e-4);
    
    %% Store the modified domains back into the original variables
    obj.domains{1} = RightStance;
    
    % register constraints
    for i=1:obj.nDomain
        domain = obj.domains{i};
        
        %% Dynamics
        
        % dynamics equation: D*ddq + H(q,dq) + F_spring - Be*u - J^T(q)*Fe = 0;
        domain = addConstraint(domain,'Nonlinear-Equality',...
            'dynamics',5,1:domain.nNode,...
            {{'q','dq','ddq','u','Fe'}},-5e-6,5e-6);
        
        % holonomic constraint (position level): h(q) - hd = 0;
        domain = addConstraint(domain,'Nonlinear-Equality',...
            'holonomicPos',2,1,...
            {{'q','h'}},-5e-6,5e-6);
        
        % holonomic constraint (velocity level): J(q)dq = 0;
        domain = addConstraint(domain,'Nonlinear-Equality',...
            'holonomicVel',2,1,...
            {{'q','dq'}},-5e-6,5e-6);
       
        % holonomic constraint (acceleration level):
        % J(q)ddq + Jdot(q,dq)dq = 0;
        domain = addConstraint(domain,'Nonlinear-Equality',...
            'holonomicAccel',2,1:domain.nNode,...
            {{'q','dq','ddq'}},-5e-6,5e-6);
        
        %  Impact 
        % D(dq_end - dq) - J'*Fimp = 0
        % J'*dq_end = 0
        domain = addConstraint(domain,'Nonlinear-Equality',...
            'impact',7,domain.nNode,{{'q','dq','Fimp','dqend'}},-5e-4,5e-4);
        
        % qend - q = 0
        domain = addConstraint(domain,'Nonlinear-Equality',...
            'qCont',5,domain.nNode,{{'q','qend'}},-5e-4,5e-4);
        
        %  Guard
        groundHeight = 0;
        domain = addConstraint(domain,'Nonlinear-Equality',...
            'guard_groundHeight',1,domain.nNode,{{'q'}},0,0,groundHeight);
        
        
        %% Physical Constraints

%         % Friction Cone
%         domain = addConstraint(domain,'Nonlinear-Inequality',...
%             'friction',1,1:domain.nNode,{{'Fe'}},0,0.5);
%         
%         % Vertical GRF
%         domain = addConstraint(domain,'Nonlinear-Inequality',...
%             'GRF',1,1:domain.nNode,{{'Fe'}},400,650);
%         
%         % Knee angles
%         domain = addConstraint(domain,'Nonlinear-Inequality',...
%             'kneeAngles',2,1:domain.nNode,{{'q'}},50*pi/180,85*pi/180);
%         
%         % Foot Height
%         domain = addConstraint(domain,'Nonlinear-Inequality',...
%             'footClearance',1,ceil(domain.nNode/2),{{'q'}},0.1,0.15);
%         
%         % Average Speed
%         domain = addConstraint(domain,'Nonlinear-Inequality',...
%             'swingLegRetraction',1,domain.nNode,{{'dq'}},0.5,2);
%         
%         % Average Speed
%         domain = addConstraint(domain,'Nonlinear-Inequality',...
%             'speed',1,domain.nNode,{{'t','q'}},1.5,1.6);

        %% Time Based Virtual Constraints
        nodeList = 1:domain.nNode;
        for j = nodeList
            extra = [domain.nNode,j];

            if j == 1
                % y = 0
                domain = addConstraint(domain,'Nonlinear-Equality',...
                    'y_timeBased',2,j,...
                    {{'q','t','a'}},-5e-4,5e-4,extra);

                % dy = 0
                domain = addConstraint(domain,'Nonlinear-Equality',...
                    'dy_timeBased',2,j,...
                    {{'q','dq','t','a'}},-5e-4,5e-4,extra);
            end
            
            % ddy = 0
            epsilon = 10;
            extra = [domain.nNode, j, epsilon^2, 2*epsilon, ];
            domain = addConstraint(domain,'Nonlinear-Equality',...
                'ddy_timeBased',2,j,...
                {{'q','dq','ddq','t','a'}},-5e-4,5e-4,extra);
        end

        
        %% Parameter Continuity
       
        % bezier parameter continuity
        domain = addConstraint(domain,'Linear-Equality',...
            'aCont',12,1:(domain.nNode-1),...
            {{'a'},{'a'}},0,0);
        
        % holonimic constraints continuity
        domain = addConstraint(domain,'Linear-Equality',...
            'hCont',2,1:(domain.nNode-1),...
            {{'h'},{'h'}},0,0);

        % Step Time Continuity
        domain = addConstraint(domain,'Linear-Equality',...
            'timeCont',1,1:domain.nNode-1,...
            {{'t'},{'t'}},0,0);
        

        %% Integration Scheme (Hermite-Simpson)
        
        nodeList = 1:2:domain.nNode-2;
        extra = (domain.nNode+1)/2;
        
        for j = nodeList
            
            domain = addConstraint(domain,'Nonlinear-Equality',...
                'intPos',5,j,...
                {{'t','q','dq'},{'dq'},{'q','dq'}},0,0,extra);
            
            domain = addConstraint(domain,'Nonlinear-Equality',...
                'intVel',5,j,...
                {{'t','dq','ddq'},{'ddq'},{'dq','ddq'}},0,0,extra);
            
            domain = addConstraint(domain,'Nonlinear-Equality',...
                'midPointPos',5,j,...
                {{'t','q','dq'},{'q'},{'q','dq'}},0,0,extra);
            
            domain = addConstraint(domain,'Nonlinear-Equality',...
                'midPointVel',5,j,...
                {{'t','dq','ddq'},{'dq'},{'dq','ddq'}},0,0,extra);
        end

 
        %% Configure Contraint Structure and Update Opt Problem
        
        % configure domain structure
        domain = configConstrStructure(domain,...
            obj.dimsConstr,obj.nzmaxConstr);

        constraints{i} = domain.constrArray;
        % update the dimension of constraints and jacobian
        obj.dimsConstr = obj.dimsConstr + domain.dimsConstr;

        obj.nzmaxConstr= obj.nzmaxConstr + domain.nzmaxConstr;
        
        obj.domains{i} = domain;

    end
    
    obj.constrArray = vertcat(constraints{:});
    nConstr = numel(obj.constrArray);
    
    

    % generate entry structure for sparse jacobian matrix
    obj.constrRows = ones(obj.nzmaxConstr,1);
    obj.constrCols = ones(obj.nzmaxConstr,1);
    constr_lb         = zeros(obj.dimsConstr,1);
    constr_ub         = zeros(obj.dimsConstr,1);
    for i=1:nConstr
        % get dimension of the constraint dimension
        dims = obj.constrArray(i).dims;
        indices = obj.constrArray(i).c_index;
        % get jacobian entry indices
        j_index = obj.constrArray(i).j_index;
        
        % get number of dependent variables
        deps = obj.constrArray(i).deps;
        num_deps = numel(deps);
        
        % rows (i)
        obj.constrRows(j_index,1) = reshape(indices*ones(1,num_deps),...
            [numel(j_index),1]);
        % columns (j)
        obj.constrCols(j_index,1) = reshape(ones(dims,1)*deps,...
            [numel(j_index),1]);
        
        
        % constraints bound
        constr_lb(indices,1) = obj.constrArray(i).cl;
        constr_ub(indices,1) = obj.constrArray(i).cu;
    end
    
    obj.cl = constr_lb;
    obj.cu = constr_ub;
    
    
end