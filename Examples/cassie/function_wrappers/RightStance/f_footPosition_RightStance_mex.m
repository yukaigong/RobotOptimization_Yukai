function [ output ] = f_footPosition_RightStance_mex( vars )
%F_FOOTPOSITION Function wrapper

% Input variables - {'q','pFoot'}
DOF = 22;
nFoot1 = 3; 
nFoot2 = 3; 
nFoot3 = 3; 
nFoot4 = 3; 

q = vars(1:DOF);
pFoot1 = vars(DOF+1:DOF+nFoot1);
pFoot2 = vars(DOF+nFoot1+1:DOF+nFoot1+nFoot2);
pFoot3 = vars(DOF+nFoot1+nFoot2+1:DOF+nFoot1+nFoot2+nFoot3);
pFoot4 = vars(DOF+nFoot1+nFoot2+nFoot3+1:end);

%% Construct constraint from mathematica generated functions

tmp1 = p_toebottomrightback(q);
tmp2 = p_toebottomrightfront(q);
tmp3 = p_toebottomleftback(q);
tmp4 = p_toebottomleftfront(q);

output = [pFoot1 - tmp1, pFoot2 - tmp2, pFoot3 - tmp3, pFoot4 - tmp4]';

end