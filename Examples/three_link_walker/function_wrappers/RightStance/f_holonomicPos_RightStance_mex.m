function [ output ] = f_holonomicPos_RightStance_mex( vars )
%F_HOLONOMICPOSITION Function wrapper to combine mathematica and matlab
% generated functions for comupting the holonomic position constraint. 

% Input variables - {'q',h'}
DOF = 5;
q = vars(1:DOF);
h = vars(DOF+1:end);

%% Construct constraint from mathematica generated functions
tmp = f_holConstrPosition_rightFoot([q,h]);

% h - h_des = 0
output = tmp;

