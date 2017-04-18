    if lateral_periodic == 1
       % Average Step Velocity (2 steps)
            velocity = [1,0,0];
            selected = [1,1,0];
            extra = [velocity, selected];
            deps_1 = domain{1}.optVarIndices.q(1,:);
            deps_2 = domain{end}.optVarIndices.qend(end,:);
            deps_3 = domain{1}.optVarIndices.t(1,:);
            deps_4 = domain{end}.optVarIndices.t(end,:);
            domain = addConstraint(domain{end},'Inter-Domain-Nonlinear',...
                'averageVelocity2steps',3,domain.nNode,...
                {deps_1,deps_2,deps_3,deps_4},-5e-4,5e-4,extra);
    end