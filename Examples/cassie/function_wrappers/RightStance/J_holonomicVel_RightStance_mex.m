function [ output ] = J_holonomicVel_RightStance_mex( vars )
%J_HOLONOMICPOS Function wrapper to combine mathematica generated functions
% for comupting the jacobian of the holonomic velocity constraint. 

% Input variables - {'q',dq'}
DOF = 22;
nFe1 = 4;
nFe2 = 2;
nFe3 = 3;
nFe4 = 3;
q = vars(1:DOF);
dq = vars(DOF+1:end);

%% Construct dynamics constraint from mathematica generated functions

% Fixed
J1 = J_holConstrVelocity_fixed([q,dq]);

% Four bar
J2 = J_holConstrVelocity_fourbar([q,dq]);

% Back toe
J3 = zeros(nFe3,2*DOF);
J3 = call_mathematica_Jacobian('holConstrVelocity_toebottomrightback', J3, [q,dq], 0);

% Front toe
J4 = zeros(nFe4,2*DOF);
J4 = call_mathematica_Jacobian('holConstrVelocity_toebottomrightfront', J4, [q,dq], 0);

% Jac(J*dq)
output = [J1; J2; J3; J4];

end
