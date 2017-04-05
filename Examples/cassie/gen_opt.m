tic
% Set paths
restoredefaultpath
addpath(genpath('..\..\..\..\Model-Generator\utils'))
model_name = 'cassie';
addpath(genpath(['..\..\..\..\Model-Generator\models\', model_name]));
addpath('gen_opt_functions')
OPT_PATH = 'gen/';

% Model Specifications
DOF = 22;
DOA = 10;
M = 5;
nOutputs = 10;
nHolonomicConstraints = 12;
actuatedIndices = [8,9,10,11,14,16,17,18,19,22];
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
pFoot = sym('pFoot',[12,1]);
vFoot = sym('vFoot',[12,1]);
Fe = sym('Fe',[nHolonomicConstraints,1]);

%% Holonomic constraint symbolic

% Constrain fixed joints
c1 = q([7,12,15,20]);
h1 = sym('h',[length(c1),1]);
Fe1 = sym('Fe',[length(c1),1]);
Fimp1 = sym('Fimp',[length(c1),1]);
J1 = jacobian(c1, q);
dJ1 = jacobian(J1*dq,q);

constraint = c1-h1;
vars = [q;h1].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrPosition_fixed', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrPosition_fixed', {vars}, {J_constraint}, OPT_PATH)

constraint = J1*dq;
vars = [q;dq].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrVelocity_fixed', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrVelocity_fixed', {vars}, {J_constraint}, OPT_PATH)

constraint = J1*ddq + dJ1*dq;
vars = [q;dq;ddq].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrAcceleration_fixed', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrAcceleration_fixed', {vars}, {J_constraint}, OPT_PATH)

constraint = J1'*Fe1;
vars = [q;Fe1].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrExternalForce_fixed', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrExternalForce_fixed', {vars}, {J_constraint}, OPT_PATH)

constraint = J1'*Fimp1;
vars = [q;Fimp1].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrImpactForce_fixed', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrImpactForce_fixed', {vars}, {J_constraint}, OPT_PATH)

% 4 Bar Knee
c2 = q([11, 19]) + q([13, 21]) - [deg2rad(13); deg2rad(13)];
h2 = sym('h',[length(c2),1]);
Fe2 = sym('Fe',[length(c2),1]);
Fimp2 = sym('Fimp',[length(c2),1]);
J2 = jacobian(c2, q);
dJ2 = jacobian(J2*dq,q);

constraint = c2 - h2;
vars = [q;h2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrPosition_fourbar', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrPosition_fourbar', {vars}, {J_constraint}, OPT_PATH)

constraint = J2*dq;
vars = [q;dq].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrVelocity_fourbar', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrVelocity_fourbar', {vars}, {J_constraint}, OPT_PATH)

constraint = J2*ddq + dJ2*dq;
vars = [q;dq;ddq].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrAcceleration_fourbar', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrAcceleration_fourbar', {vars}, {J_constraint}, OPT_PATH)

constraint = J2'*Fe2;
vars = [q;Fe2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrExternalForce_fourbar', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrExternalForce_fourbar', {vars}, {J_constraint}, OPT_PATH)

constraint = J2'*Fimp2;
vars = [q;Fimp2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_holConstrImpactForce_fourbar', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_holConstrImpactForce_fourbar', {vars}, {J_constraint}, OPT_PATH)

% Initialization
h = sym('h',[nHolonomicConstraints,1]);
h_des = sym('h_des',[nHolonomicConstraints,1]);
constraint = h - h_des; constraint(10) = 0;
vars = h.';
extra = h_des.';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_h0_','RightStance'], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_h0_','RightStance'], {vars,extra}, {J_constraint}, OPT_PATH)
symbolicToFunction(['f_h0_','LeftStance'], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_h0_','LeftStance'], {vars,extra}, {J_constraint}, OPT_PATH)

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
outputs_sym = q(actuatedIndices);
virtual_constraints(DOF, outputs_sym, M, OPT_PATH, 'RightStance');
outputs_sym = q(actuatedIndices);
virtual_constraints(DOF, outputs_sym, M, OPT_PATH, 'LeftStance');

%% Physical Constraints
disp('Generating physical constraints ...')
physical_constraints(DOF, OPT_PATH, 'RightStance');
physical_constraints(DOF, OPT_PATH, 'LeftStance');

%% Costs
disp('Generating torque costs ...')
torque_costs(DOA, OPT_PATH, 'RightStance');
torque_costs(DOA, OPT_PATH, 'LeftStance');

additional_costs(OPT_PATH, 'RightStance');
additional_costs(OPT_PATH, 'LeftStance');

%% Constrain to externally provided state
selected = sym('s',[2*DOF,1]);
constraint = selected.*(x1-x2);
vars = [x1].';
extra = [selected; x2].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_xConstrainExternal_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_xConstrainExternal_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)
symbolicToFunction('f_xConstrainExternal_LeftStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_xConstrainExternal_LeftStance', {vars,extra}, {J_constraint}, OPT_PATH)


weight = sym('w',[2*DOF,1]);
cost = sum(weight.*(x1-x2).^2);
vars = [x1].';
extra = [weight; x2].';
J_cost = jacobian(cost,vars);
symbolicToFunction('f_xCostExternal_RightStance', {vars,extra}, {cost}, OPT_PATH)
symbolicToFunction('J_xCostExternal_RightStance', {vars,extra}, {J_cost}, OPT_PATH)
symbolicToFunction('f_xCostExternal_LeftStance', {vars,extra}, {cost}, OPT_PATH)
symbolicToFunction('J_xCostExternal_LeftStance', {vars,extra}, {J_cost}, OPT_PATH)

%% Extra constraints

% Guard - ground height
syms groundHeight
constraint = pFoot([9,12]) - groundHeight;
vars = [pFoot].';
extra = [groundHeight].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_guard_groundHeight_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_guard_groundHeight_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)
constraint = pFoot([3,6]) - groundHeight;
vars = [pFoot].';
extra = [groundHeight].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_guard_groundHeight_LeftStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_guard_groundHeight_LeftStance', {vars,extra}, {J_constraint}, OPT_PATH)

% Step Length (back of toe)
selected = sym('s',[3,1]);
stepLength = sym('stepLength',[3,1]);
pFoot1 = sym('pFoot1',[12,1]);
pFoot2 = sym('pFoot2',[12,1]);
constraint = selected.*((pFoot2(7:9) - pFoot1(7:9)) - stepLength);
vars = [pFoot1; pFoot2].';
extra = [stepLength; selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_stepLength_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_stepLength_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)
constraint = selected.*((pFoot2(1:3) - pFoot1(1:3)) - stepLength);
vars = [pFoot1; pFoot2].';
extra = [stepLength; selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_stepLength_LeftStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_stepLength_LeftStance', {vars,extra}, {J_constraint}, OPT_PATH)

% Average Velocity
syms T
selected = sym('s',[3,1]);
velocity = sym('v',[3,1]);
constraint = selected.*((q2(1:3)-q1(1:3))./T - velocity);
vars = [q1; q2; T].';
extra = [velocity; selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_averageVelocity_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_averageVelocity_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)
symbolicToFunction('f_averageVelocity_LeftStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_averageVelocity_LeftStance', {vars,extra}, {J_constraint}, OPT_PATH)

% Swing Foot Velocity
selected = sym('s',[3,1]);
constraint = selected.*vFoot(7:9);
vars = [vFoot].';
extra = [selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_swingFootVelocity_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_swingFootVelocity_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)
constraint = selected.*vFoot(1:3);
vars = [vFoot].';
extra = [selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_swingFootVelocity_LeftStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_swingFootVelocity_LeftStance', {vars,extra}, {J_constraint}, OPT_PATH)

% Ground Reaction Force (cones on both back and front of toe)
syms mu
constraint = [sqrt(Fe(7)^2+Fe(8)^2) - mu*Fe(9); sqrt(Fe(10)^2+Fe(11)^2) - mu*Fe(12)];
vars = [Fe].';
extra = [mu].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_GRF_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_GRF_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)
symbolicToFunction('f_GRF_LeftStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_GRF_LeftStance', {vars,extra}, {J_constraint}, OPT_PATH)

% Flat foot constraint
constraint = pFoot(9) - pFoot(12);
vars = [pFoot].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_flatSwingFoot_RightStance', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_flatSwingFoot_RightStance', {vars}, {J_constraint}, OPT_PATH)
constraint = pFoot(3) - pFoot(6);
vars = [pFoot].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_flatSwingFoot_LeftStance', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_flatSwingFoot_LeftStance', {vars}, {J_constraint}, OPT_PATH)

% Halfway Step Length
selected = sym('s',[3,1]);
pFoot1 = sym('pFoot1',[12,1]);
pFoot2 = sym('pFoot2',[12,1]);
pFoot3 = sym('pFoot3',[12,1]);
constraint = selected.*( (pFoot3(7:9) - pFoot1(7:9)) - 2*(pFoot2(7:9) - pFoot1(7:9)) );
vars = [pFoot1; pFoot2; pFoot3].';
extra = [selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_halfwayStepLength_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_halfwayStepLength_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)
constraint = selected.*( (pFoot3(1:3) - pFoot1(1:3)) - 2*(pFoot2(1:3) - pFoot1(1:3)) );
vars = [pFoot1; pFoot2; pFoot3].';
extra = [selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_halfwayStepLength_LeftStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_halfwayStepLength_LeftStance', {vars,extra}, {J_constraint}, OPT_PATH)


% Bezier parameter Consistancy Constraint
selected = sym('s',[nOutputs,1]);
a1 = sym('a1_',[nOutputs,(M+1)]);
a2 = sym('a2_',[nOutputs,(M+1)]);
a2_tmp = a2;
a2_tmp([1,2,6,7],:) = -a2_tmp([1,2,6,7],:);
a2_tmp = [a2_tmp(end/2+1:end,:); a2_tmp(1:end/2,:)];
constraint_matrix = repmat(selected,1,M+1) .* (a2_tmp - a1);
constraint = reshape(constraint_matrix,[],1);
vars = [reshape(a1.',[],1); reshape(a2.',[],1)].';
extra = [selected].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_aSymmetrySelected_RightStance', {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction('J_aSymmetrySelected_RightStance', {vars,extra}, {J_constraint}, OPT_PATH)


% Foot width constraint
constraint = pFoot([8,11]) - pFoot([2,5]);
vars = [pFoot].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_footWidth_RightStance', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_footWidth_RightStance', {vars}, {J_constraint}, OPT_PATH)
symbolicToFunction('f_footWidth_LeftStance', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_footWidth_LeftStance', {vars}, {J_constraint}, OPT_PATH)

% Height of robot (base - stanceFoot)
constraint = q(3) - pFoot(3);
vars = [q;pFoot].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_base2stanceHeight_RightStance', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_base2stanceHeight_RightStance', {vars}, {J_constraint}, OPT_PATH)
constraint = q(3) - pFoot(9);
vars = [q;pFoot].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction('f_base2stanceHeight_LeftStance', {vars}, {constraint}, OPT_PATH)
symbolicToFunction('J_base2stanceHeight_LeftStance', {vars}, {J_constraint}, OPT_PATH)


%% Extra costs

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



toc

