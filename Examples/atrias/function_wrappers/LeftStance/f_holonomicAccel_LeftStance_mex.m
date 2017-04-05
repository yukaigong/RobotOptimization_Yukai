function [ output ] = f_holonomicAccel_LeftStance_mex( vars )
%F_HOLONOMICACCEL Function wrapper to combine mathematica and matlab
% generated functions for comupting the holonomic position constraint. 

% Input variables - {'q',,'dq',ddq'}
DOF = 16;
q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
ddq = vars(2*DOF+1:end);

%% Construct constraint from mathematica generated functions

% Four bar
tmp1 = f_holConstrAcceleration_fourBar([q,dq,ddq]);

% Left Foot
tmp2 = f_holConstrAcceleration_LeftFoot([q,dq,ddq]);

% J*ddq + dJ*dq = 0
output = [tmp1; tmp2];

end
