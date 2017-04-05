function [] = hermite_simpson_integration_constraints(DOF, OPT_PATH, domainName)
%% Function to generate Hermite-Simpson Integration Constraints
%   Author: Ross Hartley
%   Date:   12/11/2016
%

% Define symbolic variables
syms N index T
q1 = sym('q1_', [DOF,1]);
dq1 = sym('dq1_', [DOF,1]);
ddq1 = sym('ddq1_', [DOF,1]);
q2 = sym('q2_', [DOF,1]);
dq2 = sym('dq2_', [DOF,1]);
ddq2 = sym('ddq2_', [DOF,1]);
q3 = sym('q3_', [DOF,1]);
dq3 = sym('dq3_', [DOF,1]);
ddq3  = sym('ddq3_', [DOF,1]);
deltaT = T/(N-1);


% integration constraints (position level)
constraint = q3 - q1 - (1/6)*deltaT*(dq1 + 4*dq2 + dq3);
vars = [T;q1;dq1;dq2;q3;dq3].';
extra = N;
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_intPos_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_intPos_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)

% integration constraints (velocity level)
constraint = dq3 - dq1 - (1/6)*deltaT*(ddq1 + 4*ddq2 + ddq3);
vars = [T;dq1;ddq1;ddq2;dq3;ddq3].';
extra = N;
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_intVel_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_intVel_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)

% midPoint constraints (position level)
constraint = q2 - (1/2)*(q3 + q1) - (1/8)*deltaT*(dq1 - dq3);
vars = [T;q1;dq1;q2;q3;dq3].';
extra = N;
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_midPointPos_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_midPointPos_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)

% midPoint constraints (velocity level)
constraint = dq2 - (1/2)*(dq3 + dq1) - (1/8)*deltaT*(ddq1 - ddq3);
vars = [T;dq1;ddq1;dq2;dq3;ddq3].';
extra = N;
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_midPointVel_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_midPointVel_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)

end