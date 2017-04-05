function [ output ] = J_footPosition_RightStance_mex( vars )
%J_FOOTPOSITION Function wrapper 

% Input variables - {'q','pFoot'}
DOF = 16;
nFoot1 = 3; 
nFoot2 = 3;  

q = vars(1:DOF);
pFoot1 = vars(DOF+1:DOF+nFoot1);
pFoot2 = vars(DOF+nFoot1+1:DOF+nFoot1+nFoot2);

%% Construct constraint from mathematica generated functions

JpFoot1 = zeros(nFoot1,DOF++nFoot1+nFoot2);
JpFoot2 = zeros(nFoot2,DOF++nFoot1+nFoot2);

J1 = [J_RightFoot([q,zeros(1,DOF)]), zeros(nFoot1,nFoot1+nFoot2)];
J2 = [J_LeftFoot([q,zeros(1,DOF)]), zeros(nFoot2,nFoot1+nFoot2)];

JpFoot1(:,DOF+1:DOF+nFoot1) = eye(nFoot1);
JpFoot2(:,DOF+nFoot1+1:DOF+nFoot1+nFoot2) = eye(nFoot2);

output = [JpFoot1 - J1; JpFoot2 - J2];

end