function [ output ] = f_holonomicVel_RightStance_mex( vars )
%F_HOLONOMICVEL Function wrapper to combine mathematica and matlab
% generated functions for comupting the holonomic velocity constraint. 

% Input variables - {'q',dq'}
DOF = 16;
q = vars(1:DOF);
dq = vars(DOF+1:end);

%% Construct constraint from mathematica generated functions

% Four bar
tmp1 = f_holConstrVelocity_fourBar([q,dq]);

% Right Foot
tmp2 = f_holConstrVelocity_RightFoot([q,dq]);

% J*dq = 0
output = [tmp1; tmp2];

end
