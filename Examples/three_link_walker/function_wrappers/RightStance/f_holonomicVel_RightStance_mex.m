function [ output ] = f_holonomicVel_RightStance_mex( vars )
%F_HOLONOMICVEL Function wrapper to combine mathematica and matlab
% generated functions for comupting the holonomic velocity constraint. 

% Input variables - {'q',dq'}
DOF = 5;
q = vars(1:DOF);
dq = vars(DOF+1:end);

%% Construct constraint from mathematica generated functions
tmp = f_holConstrVelocity_rightFoot([q,dq]);

% J*dq = 0
output = tmp;

