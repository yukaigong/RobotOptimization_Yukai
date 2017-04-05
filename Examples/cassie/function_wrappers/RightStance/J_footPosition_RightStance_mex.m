function [ output ] = J_footPosition_RightStance_mex( vars )
%J_FOOTPOSITION Function wrapper 

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

JpFoot1 = zeros(nFoot1,DOF+nFoot1+nFoot2+nFoot3+nFoot4);
JpFoot2 = zeros(nFoot2,DOF+nFoot1+nFoot2+nFoot3+nFoot4);
JpFoot3 = zeros(nFoot2,DOF+nFoot1+nFoot2+nFoot3+nFoot4);
JpFoot4 = zeros(nFoot2,DOF+nFoot1+nFoot2+nFoot3+nFoot4);

J1 = [J_toebottomrightback([q,zeros(1,DOF)]), zeros(nFoot1,nFoot1+nFoot2+nFoot3+nFoot4)];
J2 = [J_toebottomrightfront([q,zeros(1,DOF)]), zeros(nFoot2,nFoot1+nFoot2+nFoot3+nFoot4)];
J3 = [J_toebottomleftback([q,zeros(1,DOF)]), zeros(nFoot3,nFoot1+nFoot2+nFoot3+nFoot4)];
J4 = [J_toebottomleftfront([q,zeros(1,DOF)]), zeros(nFoot4,nFoot1+nFoot2+nFoot3+nFoot4)];

JpFoot1(:,DOF+1:DOF+nFoot1) = eye(nFoot1);
JpFoot2(:,DOF+nFoot1+1:DOF+nFoot1+nFoot2) = eye(nFoot2);
JpFoot3(:,DOF+nFoot1+nFoot2+1:DOF+nFoot1+nFoot2+nFoot3) = eye(nFoot3);
JpFoot4(:,DOF+nFoot1+nFoot2+nFoot3+1:end) = eye(nFoot4);

output = [JpFoot1 - J1; JpFoot2 - J2; JpFoot3 - J3; JpFoot4 - J4];

end