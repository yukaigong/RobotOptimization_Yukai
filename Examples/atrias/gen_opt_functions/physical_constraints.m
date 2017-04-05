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

% q/dq continuity selected
selected = sym('s',[DOF,1]);
constraint = (q2 - q1).*selected;
vars = [q1;q2].';
extra = selected.';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_qContSelected_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_qContSelected_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)

% Knee Angles
constraint = q([9,14]) - q([8,13]);
vars = [q].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_kneeAngles_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_kneeAngles_',domainName], {vars}, {J_constraint}, OPT_PATH)

% yaw angle
constraint = q(6);
vars = [q].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_yaw_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_yaw_',domainName], {vars}, {J_constraint}, OPT_PATH)


end
