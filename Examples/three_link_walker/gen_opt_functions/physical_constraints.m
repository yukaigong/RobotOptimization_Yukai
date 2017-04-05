function [] = physical_constraints(DOF, OPT_PATH, domainName)
%% Function to generate the physical constraint functions for optimization
%   Author: Ross Hartley
%   Date:   12/11/2016
%

%% Generate physical constraints
syms T
q = sym('q',[DOF,1]);
dq = sym('dq',[DOF,1]);
ddq = sym('ddq',[DOF,1]);

q1 = sym('q1_',[DOF,1]);
dq1 = sym('dq1_',[DOF,1]);
ddq1 = sym('ddq1_',[DOF,1]);

q2 = sym('q2_',[DOF,1]);
dq2 = sym('dq2_',[DOF,1]);
ddq2 = sym('ddq2_',[DOF,1]);

% Average Step Velocity
% (q_end - q_begin)/stepTime = v_average
constraint = (q2(1) - q1(1))/T;
vars = [q1;q2;T].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_averageStepVelocity_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_averageStepVelocity_',domainName], {vars}, {J_constraint}, OPT_PATH)

% Periodicity
% (q_end - q_begin) = 0
constraint = [q2([1:3,5,4]);dq2([1:3,5,4])] - [q1;dq1]; constraint(1:2) = 0;
vars = [q1;dq1;q2;dq2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_periodicity_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_periodicity_',domainName], {vars}, {J_constraint}, OPT_PATH)



end
