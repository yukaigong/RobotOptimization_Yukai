function [ output ] = J_holonomicAccel_RightStance_mex( vars )
%J_HOLONOMICACCEL Function wrapper to combine mathematica generated functions
% for comupting the jacobian of the holonomic acceleration constraint. 

% Input variables - {'q',dq','ddq'}
DOF = 5;
nHolConstraints = 2;
q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
ddq = vars(2*DOF+1:end);

%% Construct dynamics constraint from mathematica generated functions
J = zeros(nHolConstraints,3*DOF);
J = call_mathematica_Jacobian('holConstrAcceleration_rightFoot', J,[q,dq,ddq], 0);

% Jac(J*ddq+dJ*dq)
output = J;
end
