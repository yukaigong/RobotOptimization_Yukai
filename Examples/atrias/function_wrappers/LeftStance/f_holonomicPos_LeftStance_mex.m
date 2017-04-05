function [ output ] = f_holonomicPos_LeftStance_mex( vars )
%F_HOLONOMICPOSITION Function wrapper to combine mathematica and matlab
% generated functions for comupting the holonomic position constraint. 

% Input variables - {'q',h'}
DOF = 16;
nh1 = 4; % Four Bar 
nh2 = 3; % Stance Foot

q = vars(1:DOF);
h1 = vars(DOF+1:DOF+nh1);
h2 = vars(DOF+nh1+1:end);

%% Construct constraint from mathematica generated functions

% Four bar
tmp1 = f_holConstrPosition_fourBar([q,h1]);

% Back toe
tmp2 = f_holConstrPosition_LeftFoot([q,h2]);

% h - h_des = 0
output = [tmp1; tmp2];

end