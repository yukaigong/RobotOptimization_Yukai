function [] = parameter_consistancy_constraints(DOF, M, nOutputs, nHolonomicConstraints, OPT_PATH, domainName)
%% Script to generate parameter consitancy constraints
%   Author: Ross Hartley
%   Date:   12/11/2016
%

% Step Time Consistancy Constraint
syms T1 T2
constraint = T1-T2;
vars = [T1;T2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_timeCont_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_timeCont_',domainName], {vars}, {J_constraint}, OPT_PATH)

% Bezier parameter Consistancy Constraint
a1 = reshape(sym('a1_',[nOutputs,(M+1)]),[],1);
a2 = reshape(sym('a2_',[nOutputs,(M+1)]),[],1);
constraint = a2 - a1;
vars = [a1;a2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_aCont_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_aCont_',domainName], {vars}, {J_constraint}, OPT_PATH)

% holonomic contraint consistancy
h1 = sym('h1_', [nHolonomicConstraints,1]);
h2 = sym('h2_', [nHolonomicConstraints,1]);
constraint = h2 - h1;
vars = [h1;h2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_hCont_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_hCont_',domainName], {vars}, {J_constraint}, OPT_PATH)

% q consistancy
q1 = sym('q1_', [DOF,1]);
q2 = sym('q2_', [DOF,1]);
constraint = q2 - q1;
vars = [q1;q2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_qCont_',domainName], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_qCont_',domainName], {vars}, {J_constraint}, OPT_PATH)


end
