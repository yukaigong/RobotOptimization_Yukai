function [ output ] = J_holonomicVel_RightStance_mex( vars )
%J_HOLONOMICPOS Function wrapper to combine mathematica generated functions
% for comupting the jacobian of the holonomic velocity constraint. 

% Input variables - {'q',dq'}
DOF = 7;
nHolConstraints = 2;
q = vars(1:DOF);
dq = vars(DOF+1:end);

%% Construct dynamics constraint from mathematica generated functions
J = zeros(nHolConstraints,2*DOF);
J = call_mathematica_Jacobian('holConstrVelocity_rightFoot', J, [q,dq], 0);

% Jac(J*dq)
output = J;

end