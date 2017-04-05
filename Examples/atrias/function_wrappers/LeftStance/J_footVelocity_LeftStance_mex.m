function [ output ] = J_footVelocity_LeftStance_mex( vars )
%J_FOOTPOSITION Function wrapper 

% Input variables - {'q','dq','vFoot'}
DOF = 16;
nFoot1 = 3; 
nFoot2 = 3; 

q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
vFoot1 = vars(2*DOF+1:2*DOF+nFoot1);
vFoot2 = vars(2*DOF+nFoot1+1:2*DOF+nFoot1+nFoot2);

%% Construct constraint from mathematica generated functions

% Right Foot
J1 = zeros(nFoot1,2*DOF+nFoot1+nFoot2);
J1 = call_mathematica_Jacobian('holConstrVelocity_RightFoot', J1, [q,dq], 0);

% Left Foot
J2 = zeros(nFoot2,2*DOF+nFoot1+nFoot2);
J2 = call_mathematica_Jacobian('holConstrVelocity_LeftFoot', J2, [q,dq], 0);

JvFoot1 = zeros(nFoot1,2*DOF++nFoot1+nFoot2);
JvFoot2 = zeros(nFoot1,2*DOF++nFoot1+nFoot2);

JvFoot1(:,2*DOF+1:2*DOF+nFoot1) = eye(nFoot1);
JvFoot2(:,2*DOF+nFoot1+1:2*DOF+nFoot1+nFoot2) = eye(nFoot2);

output = [JvFoot1 - J1; JvFoot2 - J2];


end

