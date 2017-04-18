opt_gait='lateral_periodic';
    switch lower(opt_gait)  
        case {'forward_transient'}
            periodic=1;
            forward_periodic=1;
            lateral=0;
            transient=0;
        case {'lateral_transient'}
            
        case {'turning'}
            periodic=1;
            forward_periodic=0;
            lateral_periodic=1;
            transient=0;
    end
    %% begin at perturbed velocity, end at desired velocity.
    load('0ms_1.mat')
    x_0   = [outputs{1}.q(1,1:22), outputs{1}.dq(1,1:22)]';
    load('0ms_1.mat')
    x_end = [outputs{1}.q(end,1:22), outputs{1}.dq(end,1:22)]';
    
    selected=ones(2*DOF,1);
    extra=[selected;x_0]';
    domains{1} = addConstraint(domains{1},'Nonlinear-Equality',...
        'xConstrainExternal',2*DOF,1,{{'q','dq'}},-5e-4,5e-4,extra);
    selected=ones(2*DOF,1);selected([1,2,3])=0;
    extra=[selected;x_end]';
    domains{obj.nDomain} = addConstraint(domains{obj.nDomain},'Nonlinear-Equality',...
        'xConstrainExternal',2*DOF,domains{obj.nDomain}.nNode,{{'q','dq'}},-5e-4,5e-4,extra);

    %% Right Stance
    
    % Initialize h to 0
    h0_des = zeros(1,NHC);
    domains{1} = addConstraint(domains{1},'Nonlinear-Equality',...
        'h0', NHC, 1, {{'h'}},-5e-4,5e-4,h0_des);
    
    % Initialize yaw to 0
    yaw_des = 0;
    domains{1} = addConstraint(domains{1},'Nonlinear-Equality',...
        'yaw', 1, 1, {{'q'}},-5e-4,5e-4,yaw_des);
    
        
    
    %% connect domains together
    for i=1:obj.nDomain-1
        deps_1 = domains{i}.optVarIndices.qend(end,:);
        deps_2 = domains{i+1}.optVarIndices.q(1,:);
        domains{2} = addConstraint(domains{2},'Inter-Domain-Nonlinear',...
            'qCont',DOF,1,{deps_1,deps_2},-5e-4,5e-4);
        deps_1 = domains{i}.optVarIndices.dqend(end,:);
        deps_2 = domains{i+1}.optVarIndices.dq(1,:);
        domains{2} = addConstraint(domains{2},'Inter-Domain-Nonlinear',...
            'qCont',DOF,1,{deps_1,deps_2},-5e-4,5e-4);
    end

    