function [ output ] = f_holonomicAccel_RightStance_mex( vars )
%F_HOLONOMICACCEL Function wrapper to combine mathematica and matlab
% generated functions for comupting the holonomic position constraint. 

% Input variables - {'q',,'dq',ddq'}
DOF = 5;
q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
ddq = vars(2*DOF+1:end);

%% Construct constraint from mathematica generated functions
tmp = f_holConstrAcceleration_rightFoot([q,dq,ddq]);

% J*ddq + dJ*dq = 0
output = tmp;

