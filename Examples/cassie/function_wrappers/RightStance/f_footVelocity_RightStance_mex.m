function [ output ] = f_footVelocity_RightStance_mex( vars )
%F_FOOTPOSITION Function wrapper

% Input variables - {'q','dq','vFoot'}
DOF = 22;
nFoot1 = 3; 
nFoot2 = 3; 
nFoot3 = 3; 
nFoot4 = 3; 

q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
vFoot1 = vars(2*DOF+1:2*DOF+nFoot1);
vFoot2 = vars(2*DOF+nFoot1+1:2*DOF+nFoot1+nFoot2);
vFoot3 = vars(2*DOF+nFoot1+nFoot2+1:2*DOF+nFoot1+nFoot2+nFoot3);
vFoot4 = vars(2*DOF+nFoot1+nFoot2+nFoot3+1:end);

%% Construct constraint from mathematica generated functions

tmp1 = J_toebottomrightback([q,dq])*dq';
tmp2 = J_toebottomrightfront([q,dq])*dq';
tmp3 = J_toebottomleftback([q,dq])*dq';
tmp4 = J_toebottomleftfront([q,dq])*dq';

output = [vFoot1' - tmp1; vFoot2' - tmp2; vFoot3' - tmp3; vFoot4' - tmp4];

end
