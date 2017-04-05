function [ output ] = J_holonomicAccel_RightStance_mex( vars )
%J_HOLONOMICACCEL Function wrapper to combine mathematica generated functions
% for comupting the jacobian of the holonomic acceleration constraint. 

% Input variables - {'q',dq','ddq'}
DOF = 22;
nFe1 = 4;
nFe2 = 2;
nFe3 = 3;
nFe4 = 3;
q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
ddq = vars(2*DOF+1:end);

%% Construct dynamics constraint from mathematica generated functions

% Fixed
J1 = J_holConstrAcceleration_fixed([q,dq,ddq]);

% Four bar
J2 = J_holConstrAcceleration_fourbar([q,dq,ddq]);

% Back toe
J3 = zeros(nFe3,3*DOF);
J3 = call_mathematica_Jacobian('holConstrAcceleration_toebottomrightback', J3, [q,dq,ddq], 0);

% Front toe
J4 = zeros(nFe4,3*DOF);
J4 = call_mathematica_Jacobian('holConstrAcceleration_toebottomrightfront', J4, [q,dq,ddq], 0);

% Jac(J*ddq+dJ*dq)
output = [J1; J2; J3; J4];

end

