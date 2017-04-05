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
vel_des = sym('vd',[2,1]);
constraint = (q2(1:2) - q1(1:2))/T - vel_des;
vars = [q1;q2;T].';
extra = [vel_des].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_averageStepVelocity_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_averageStepVelocity_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)

% Periodicity
% (q_end - q_begin) = 0
q2_reset = q2([1:6,15:22,7:14]); q2_reset([4,6,8:9,16:17]) = -q2_reset([4,6,8:9,16:17]);
dq2_reset = q2([1:6,15:22,7:14]); dq2_reset([4,6,8:9,16:17]) = -dq2_reset([4,6,8:9,16:17]);
constraint = [q2_reset;dq2_reset] - [q1;dq1]; 
% constraint([1:2,23:44]) = 0;
constraint([1:2,23:24]) = 0;
vars = [q1;dq1;q2;dq2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_periodicity_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_periodicity_',domainName], {vars}, {J_constraint}, OPT_PATH)

% Constrain yaw
syms yaw_des
constraint = q(6)- yaw_des;
vars = q.';
extra = yaw_des.';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_yaw_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_yaw_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)

% q/dq continuity selected
selected = sym('s',[DOF,1]);
constraint = (q2 - q1).*selected;
vars = [q1;q2].';
extra = selected.';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_qContSelected_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_qContSelected_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)



end
