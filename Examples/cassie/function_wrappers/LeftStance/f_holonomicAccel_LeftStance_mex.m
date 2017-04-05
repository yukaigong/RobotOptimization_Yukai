function [ output ] = f_holonomicAccel_LeftStance_mex( vars )
%F_HOLONOMICACCEL Function wrapper to combine mathematica and matlab
% generated functions for comupting the holonomic position constraint. 

% Input variables - {'q',,'dq',ddq'}
DOF = 22;
q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
ddq = vars(2*DOF+1:end);

%% Construct constraint from mathematica generated functions

% Fixed
tmp1 = f_holConstrAcceleration_fixed([q,dq,ddq]);

% Four bar
tmp2 = f_holConstrAcceleration_fourbar([q,dq,ddq]);

% Back toe
tmp3 = f_holConstrAcceleration_toebottomleftback([q,dq,ddq]);

% Front toe
tmp4 = f_holConstrAcceleration_toebottomleftfront([q,dq,ddq]);

% J*ddq + dJ*dq = 0
output = [tmp1; tmp2; tmp3; tmp4];

