function [] = guard_constraints(DOF, swingFootHeight, OPT_PATH, domainName)
%% Function to generate the guard constraint functions for optimization
%   Author: Ross Hartley
%   Date:   12/11/2016
%

%% Generate guard constraints
q = sym('q',[DOF,1]);

% swingFootHeight = groundHeight at the end of the step
syms groundHeight
constraint = swingFootHeight - groundHeight;
vars = [q].';
extra = [groundHeight].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_guard_groundHeight_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_guard_groundHeight_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)

end
