tic
% Set paths
restoredefaultpath
model_name = 'five_link_walker';
addpath(genpath('..\..\..\Model-Generator\utils'))
addpath(genpath(['..\..\..\Model-Generator\models\', model_name]));
addpath('gen_opt_functions')
OPT_PATH = 'gen/';

%% Model Specifications
DOF = 7;
DOA = 4;
M = 5;
nOutputs = 4;
nHolonomicConstraints = 2;
q = sym('q',[DOF,1]);

%% Integratoin Constraints
disp('Generating integration constraints ...')
integration_constraints(DOF, OPT_PATH, 'RightStance');
integration_constraints(DOF, OPT_PATH, 'LeftStance');

%% Parameter Consistancy
disp('Generating parameter consitancy constraints ...')
parameter_consistancy_constraints(DOF, M, nOutputs, nHolonomicConstraints, OPT_PATH, 'RightStance');
parameter_consistancy_constraints(DOF, M, nOutputs, nHolonomicConstraints, OPT_PATH, 'LeftStance');

%% Holonomic Constraint Initialization
h = sym('h',[nHolonomicConstraints,1]);
h_des = sym('h_des',[nHolonomicConstraints,1]);
constraint = h - h_des;
vars = h.';
extra = h_des.';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_h0_','RightStance'], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_h0_','RightStance'], {vars,extra}, {J_constraint}, OPT_PATH)
symbolicToFunction(['f_h0_','LeftStance'], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_h0_','LeftStance'], {vars,extra}, {J_constraint}, OPT_PATH)

%% Virtual Constraints
disp('Generating virtual constraints ...')
outputs_sym = q(4:7);
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
toc

