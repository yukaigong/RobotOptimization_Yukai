function [ output ] = f_holonomicVel_LeftStance_mex( vars )
%F_HOLONOMICVEL Function wrapper to combine mathematica and matlab
% generated functions for comupting the holonomic velocity constraint. 

% Input variables - {'q',dq'}
DOF = 22;
q = vars(1:DOF);
dq = vars(DOF+1:end);

%% Construct constraint from mathematica generated functions

% Fixed
tmp1 = f_holConstrVelocity_fixed([q,dq]);

% Four bar
tmp2 = f_holConstrVelocity_fourbar([q,dq]);

% Back toe
tmp3 = f_holConstrVelocity_toebottomleftback([q,dq]);

% Front toe
tmp4 = f_holConstrVelocity_toebottomleftfront([q,dq]);

% J*dq = 0
output = [tmp1; tmp2; tmp3; tmp4];

