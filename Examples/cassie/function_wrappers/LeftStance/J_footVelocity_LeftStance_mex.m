function [ output ] = J_footVelocity_LeftStance_mex( vars )
%J_FOOTPOSITION Function wrapper 

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

% Back Right
J1 = zeros(nFoot1,2*DOF+nFoot1+nFoot2+nFoot3+nFoot4);
J1 = call_mathematica_Jacobian('holConstrVelocity_toebottomrightback', J1, [q,dq], 0);

% Front Right
J2 = zeros(nFoot2,2*DOF+nFoot1+nFoot2+nFoot3+nFoot4);
J2 = call_mathematica_Jacobian('holConstrVelocity_toebottomrightfront', J2, [q,dq], 0);

% Back Left
J3 = zeros(nFoot1,2*DOF+nFoot1+nFoot2+nFoot3+nFoot4);
J3 = call_mathematica_Jacobian('holConstrVelocity_toebottomleftback', J3, [q,dq], 0);

% Front Left
J4 = zeros(nFoot2,2*DOF+nFoot1+nFoot2+nFoot3+nFoot4);
J4 = call_mathematica_Jacobian('holConstrVelocity_toebottomleftfront', J4, [q,dq], 0);

JvFoot1 = zeros(nFoot1,2*DOF++nFoot1+nFoot2+nFoot3+nFoot4);
JvFoot2 = zeros(nFoot2,2*DOF++nFoot1+nFoot2+nFoot3+nFoot4);
JvFoot3 = zeros(nFoot3,2*DOF++nFoot1+nFoot2+nFoot3+nFoot4);
JvFoot4 = zeros(nFoot4,2*DOF++nFoot1+nFoot2+nFoot3+nFoot4);

JvFoot1(:,2*DOF+1:2*DOF+nFoot1) = eye(nFoot1);
JvFoot2(:,2*DOF+nFoot1+1:2*DOF+nFoot1+nFoot2) = eye(nFoot2);
JvFoot3(:,2*DOF+nFoot1+nFoot2+1:2*DOF+nFoot1+nFoot2+nFoot3) = eye(nFoot3);
JvFoot4(:,2*DOF+nFoot1+nFoot2+nFoot3+1:end) = eye(nFoot4);

output = [JvFoot1 - J1; JvFoot2 - J2; JvFoot3 - J3; JvFoot4 - J4];

end


