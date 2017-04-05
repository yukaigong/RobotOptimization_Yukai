function [ output ] = J_holonomicVel_RightStance_mex( vars )
%J_HOLONOMICPOS Function wrapper to combine mathematica generated functions
% for comupting the jacobian of the holonomic velocity constraint. 

% Input variables - {'q',dq'}
DOF = 16;
nFe1 = 4;
nFe2 = 3;
q = vars(1:DOF);
dq = vars(DOF+1:end);

%% Construct dynamics constraint from mathematica generated functions

% Four bar
J1 = J_holConstrVelocity_fourBar([q,dq]);

% Stance Foot
J2 = zeros(nFe2,2*DOF);
J2 = call_mathematica_Jacobian('holConstrVelocity_RightFoot', J2, [q,dq], 0);

% Jac(J*dq)
output = [J1; J2];

end
