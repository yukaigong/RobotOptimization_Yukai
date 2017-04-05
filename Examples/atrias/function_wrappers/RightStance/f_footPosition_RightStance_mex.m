function [ output ] = f_footPosition_RightStance_mex( vars )
%F_FOOTPOSITION Function wrapper

% Input variables - {'q','pFoot'}
DOF = 16;
nFoot1 = 3; 
nFoot2 = 3; 

q = vars(1:DOF);
pFoot1 = vars(DOF+1:DOF+nFoot1);
pFoot2 = vars(DOF+nFoot1+1:DOF+nFoot1+nFoot2);

%% Construct constraint from mathematica generated functions

tmp1 = p_RightFoot(q);
tmp2 = p_LeftFoot(q);

output = [pFoot1 - tmp1, pFoot2 - tmp2]';

end