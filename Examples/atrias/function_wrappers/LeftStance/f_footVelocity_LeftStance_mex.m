function [ output ] = f_footVelocity_LeftStance_mex( vars )
%F_FOOTPOSITION Function wrapper

% Input variables - {'q','dq','vFoot'}
DOF = 16;
nFoot1 = 3; 
nFoot2 = 3; 

q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
vFoot1 = vars(2*DOF+1:2*DOF+nFoot1);
vFoot2 = vars(2*DOF+nFoot1+1:2*DOF+nFoot1+nFoot2);

%% Construct constraint from mathematica generated functions

tmp1 = J_RightFoot([q,dq])*dq';
tmp2 = J_LeftFoot([q,dq])*dq';

output = [vFoot1' - tmp1; vFoot2' - tmp2];

