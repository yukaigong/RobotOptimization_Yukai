function [] = dynamics_constraints(DOF, DOA, h1_sym, h2_sym, OPT_PATH, domainName)
%% Function to generate the constraint forces for both the continuous and impact dynamics, 
%  and the constraints to initialize post-impact state.
%   Author: Ross Hartley
%   Date:   12/11/2016
%

%% Generate Holonomic Constraints
q1 = sym('q1_',[DOF,1]);
q2 = sym('q2_',[DOF,1]);
dq1 = sym('dq1_',[DOF,1]);
dq2 = sym('dq2_',[DOF,1]);
ddq1 = sym('ddq1_',[DOF,1]);
ddq2 = sym('ddq2_',[DOF,1]);
J1 = jacobian(h1_sym,q1);
J2 = jacobian(h2_sym,q2);
Fe = sym('Fe_', size(h1_sym));
Fimp = sym('Fimp_', size(h2_sym));
u = sym('u_', [DOA,1]);


% Dynamics external force from holonomic constraint
% J'(q) * Fe
constraint = J1.' * Fe;
vars = [q1;dq1;ddq1;u;Fe].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_dynamicsExternalForce_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_dynamicsExternalForce_',domainName], {vars}, {J_constraint}, OPT_PATH)

% Dynamics impact force from next holonomic constraint
% J'(q) * Fe
constraint = J2.'*Fimp;
vars = [q2;dq1;Fimp;dq2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_dynamicsImpactForce_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_dynamicsImpactForce_',domainName], {vars}, {J_constraint}, OPT_PATH)

% Impact, constrain next holonomic constraint
% J'(q) * Fe
constraint = J2 * dq2;
vars = [q2;dq2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_impactHolonomic_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_impactHolonomic_',domainName], {vars}, {J_constraint}, OPT_PATH)

% Impact, position remains constant
% q1 = q2
constraint = q2 - q1;
vars = [q1;q2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_qCont_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_qCont_',domainName], {vars}, {J_constraint}, OPT_PATH)


end
