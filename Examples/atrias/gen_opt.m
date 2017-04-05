%% Script to generate extra costs/constraints specific to this optimization

% Set paths
restoredefaultpath
addpath(genpath('..\..\..\Model-Generator\utils'))
model_name = 'atrias';
addpath(genpath(['..\..\..\Model-Generator\models\', model_name]));
addpath('gen_opt_functions')
OPT_PATH = 'gen/';

% Model Specifications
DOF = 16;
DOA = 6;
M = 5;
nOutputs = 6;
nHolonomicConstraints = 7;
actuatedIndices = [7,8,9,12,13,14];
q = sym('q',[DOF,1]);
dq = sym('dq',[DOF,1]);
ddq = sym('ddq',[DOF,1]);
x = [q;dq];

q1 = sym('q1_',[DOF,1]);
q2 = sym('q2_',[DOF,1]);
dq1 = sym('dq1_',[DOF,1]);
dq2 = sym('dq2_',[DOF,1]);
x1 = [q1;dq1];
x2 = [q2;dq2];
pFoot = sym('pFoot',[6,1]);
vFoot = sym('vFoot',[6,1]);


%% Holonomic constraint symbolic

% Initialization
h = sym('h',[nHolonomicConstraints,1]); 
constraint = h;
vars = [h].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_h0_','RightStance'], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_h0_','RightStance'], {vars}, {J_constraint}, OPT_PATH)
symbolicToFunction(['f_h0_','LeftStance'], {vars}, {constraint}, OPT_PATH)
symbolicToFunction(['J_h0_','LeftStance'], {vars}, {J_constraint}, OPT_PATH)

% Four Bar Knee
c = q([10,11,15,16]) - (q([9,8,14,13]) - q([8,9,13,14]));
h = sym('h',[length(c),1]);
Fe = sym('Fe',[length(c),1]);
Fimp = sym('Fimp',[length(c),1]);
J = jacobian(c, q);
dJ = jacobian(J*dq,q);

constraint = c - h;
vars = [q;h].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrPosition_fourBar', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrPosition_fourBar', {vars}, {J_constraint}, OPT_PATH)

constraint = J*dq;
vars = [q;dq].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrVelocity_fourBar', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrVelocity_fourBar', {vars}, {J_constraint}, OPT_PATH)

constraint = J*ddq + dJ*dq;
vars = [q;dq;ddq].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrAcceleration_fourBar', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrAcceleration_fourBar', {vars}, {J_constraint}, OPT_PATH)

constraint = J'*Fe;
vars = [q;Fe].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrExternalForce_fourBar', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrExternalForce_fourBar', {vars}, {J_constraint}, OPT_PATH)

constraint = J'*Fimp;
vars = [q;Fimp].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrImpactForce_fourBar', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrImpactForce_fourBar', {vars}, {J_constraint}, OPT_PATH)


%% Integration Constraints
disp('Generating integration constraints ...')
integration_constraints(DOF, OPT_PATH, 'RightStance');
integration_constraints(DOF, OPT_PATH, 'LeftStance');

%% Parameter Consistancy
disp('Generating parameter consitancy constraints ...')
parameter_consistancy_constraints(DOF, M, nOutputs, nHolonomicConstraints, OPT_PATH, 'RightStance');
parameter_consistancy_constraints(DOF, M, nOutputs, nHolonomicConstraints, OPT_PATH, 'LeftStance');

%% Virtual Constraints
disp('Generating virtual constraints ...')
outputs_sym = [mean(q(8:9)); q(9)-q(8); q(7); mean(q(13:14)); q(14)-q(13); q(12)];
virtual_constraints(DOF, outputs_sym, M, OPT_PATH, 'RightStance');
virtual_constraints(DOF, outputs_sym, M, OPT_PATH, 'LeftStance');

%% Physical Constraints
disp('Generating physical constraints ...')
physical_constraints(DOF, OPT_PATH, 'RightStance');
physical_constraints(DOF, OPT_PATH, 'LeftStance');

%% Costs
disp('Generating torque costs ...')
torque_costs(DOA, OPT_PATH, 'RightStance');
torque_costs(DOA, OPT_PATH, 'LeftStance');

%% Extra Constraints

% Ground Height Guard
syms groundHeight
constraint = pFoot(6) - groundHeight;
vars = [pFoot].';
extra = [groundHeight].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_guard_groundHeight_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_guard_groundHeight_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)

syms groundHeight
constraint = pFoot(3) - groundHeight;
vars = [pFoot].';
extra = [groundHeight].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_guard_groundHeight_LeftStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_guard_groundHeight_LeftStance', {vars,extra}, {J_constraint}, OPT_PATH)

% Ground Slope Guard
slope = sym('m',[2,1]);
constraint = pFoot(6) - sum(slope.*pFoot(4:5));
vars = [pFoot].';
extra = [slope].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_guard_groundSlope_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_guard_groundSlope_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)

slope = sym('m',[2,1]);
constraint = pFoot(3) - sum(slope.*pFoot(1:2));
vars = [pFoot].';
extra = [slope].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_guard_groundSlope_LeftStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_guard_groundSlope_LeftStance', {vars,extra}, {J_constraint}, OPT_PATH)

% Step Length
selected = sym('s',[3,1]);
stepLength = sym('stepLength',[3,1]);
pFoot1 = sym('pFoot1',[6,1]);
pFoot2 = sym('pFoot2',[6,1]);
constraint = selected.*((pFoot2(4:6) - pFoot1(4:6)) - stepLength);
vars = [pFoot1; pFoot2].';
extra = [stepLength; selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_stepLength_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_stepLength_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)

selected = sym('s',[3,1]);
stepLength = sym('stepLength',[3,1]);
pFoot1 = sym('pFoot1',[6,1]);
pFoot2 = sym('pFoot2',[6,1]);
constraint = selected.*((pFoot2(1:3) - pFoot1(1:3)) - stepLength);
vars = [pFoot1; pFoot2].';
extra = [stepLength; selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_stepLength_LeftStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_stepLength_LeftStance', {vars,extra}, {J_constraint}, OPT_PATH)

% Swing Foot Velocity
selected = sym('s',[3,1]);
constraint = selected.*vFoot(4:6);
vars = [vFoot].';
extra = [selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_swingFootVelocity_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_swingFootVelocity_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)

selected = sym('s',[3,1]);
constraint = selected.*vFoot(1:3);
vars = [vFoot].';
extra = [selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_swingFootVelocity_LeftStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_swingFootVelocity_LeftStance', {vars,extra}, {J_constraint}, OPT_PATH)

% Ground Reaction Force
syms mu
Fe = sym('Fe',[7,1]);
constraint = sqrt(Fe(5)^2+Fe(6)^2) - mu*Fe(7);
vars = [Fe].';
extra = [mu].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_GRF_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_GRF_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)
symbolicToFunction('f_GRF_LeftStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_GRF_LeftStance', {vars,extra}, {J_constraint}, OPT_PATH)

% Bezier parameter Consistancy Constraint
selected = sym('s',[nOutputs,1]);
a1 = sym('a1_',[nOutputs,(M+1)]);
a2 = sym('a2_',[nOutputs,(M+1)]);
a2_tmp = a2;
a2_tmp([3,6],:) = -a2_tmp([3,6],:);
a2_tmp = [a2_tmp(end/2+1:end,:); a2_tmp(1:end/2,:)];
constraint_matrix = repmat(selected,1,M+1) .* (a2_tmp - a1);
constraint = reshape(constraint_matrix,[],1);
vars = [reshape(a1.',[],1); reshape(a2.',[],1)].';
extra = [selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_aSymmetrySelected_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_aSymmetrySelected_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)

% Knee angles
% Stance
constraint = q(9)-q(8);
vars = [q].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_stanceKneeAngle_RightStance', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_stanceKneeAngle_RightStance', {vars}, {J_constraint}, OPT_PATH)
constraint = q(14)-q(13);
vars = [q].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_stanceKneeAngle_LeftStance', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_stanceKneeAngle_LeftStance', {vars}, {J_constraint}, OPT_PATH)
% Swing
constraint = q(14)-q(13);
vars = [q].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_swingKneeAngle_RightStance', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_swingKneeAngle_RightStance', {vars}, {J_constraint}, OPT_PATH)
constraint = q(9)-q(8);
vars = [q].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_swingKneeAngle_LeftStance', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_swingKneeAngle_LeftStance', {vars}, {J_constraint}, OPT_PATH)


%% Extra Costs

% Deviation Cost on selected state variable
desired = sym('d',[2*DOF,1]);
weight = sym('w',[2*DOF,1]);
selected = sym('s',[2*DOF,1]);
cost = sum(weight.*(x - desired).^2);
vars = [q;dq].';
extra = [desired;weight;selected].';
J_cost = jacobian(cost,vars);
symbolicToFunction('f_stateCost_RightStance', {vars,extra}, {cost}, OPT_PATH)
symbolicToFunction('J_stateCost_RightStance', {vars,extra}, {J_cost}, OPT_PATH)
symbolicToFunction('f_stateCost_LeftStance', {vars,extra}, {cost}, OPT_PATH)
symbolicToFunction('J_stateCost_LeftStance', {vars,extra}, {J_cost}, OPT_PATH)






