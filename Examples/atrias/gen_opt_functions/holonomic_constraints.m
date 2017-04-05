function [] = holonomic_constraints(DOF, holonomic_constraint_sym, OPT_PATH, domainName)
%% Script to generate holonomic constraints
%   Author: Ross Hartley
%   Date:   12/11/2016
%

%% Generate Holonomic Constraints
q = sym('q',[DOF,1]);
dq = sym('dq',[DOF,1]);
ddq = sym('ddq',[DOF,1]);
h = sym('h',size(holonomic_constraint_sym));
h_des = sym('h_des',size(holonomic_constraint_sym));
J = jacobian(holonomic_constraint_sym,q);
Jdot = jacobian(J*dq,q);

% position
% holConstraints - hd = 0
constraint = holonomic_constraint_sym - h;
vars = [q;h].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_holonomicPos_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_holonomicPos_',domainName], {vars}, {J_constraint}, OPT_PATH)

% velociy
% J*dq = 0
constraint = J*dq;
vars = [q;dq].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_holonomicVel_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_holonomicVel_',domainName], {vars}, {J_constraint}, OPT_PATH)

% acceleration
% J*ddq + Jdot*dq = 0
constraint = J*ddq + Jdot*dq;
vars = [q;dq;ddq].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_holonomicAcc_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_holonomicAcc_',domainName], {vars}, {J_constraint}, OPT_PATH)

% initialize h
constraint = h - h_des;
vars = [h].';
extra = [h_des].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_h0_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_h0_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)

end
