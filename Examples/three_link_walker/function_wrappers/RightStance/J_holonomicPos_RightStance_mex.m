function [ output ] = J_holonomicPos_RightStance_mex( vars )
%J_HOLONOMICPOS Function wrapper to combine mathematica generated functions
% for comupting the jacobian of the holonomic position constraint. 

% Input variables - {'q',h'}
DOF = 5;
nHolConstraints = 2;
q = vars(1:DOF);
h = vars(DOF+1:end);

%% Construct dynamics constraint from mathematica generated functions
J = zeros(nHolConstraints,DOF+nHolConstraints);
J = call_mathematica_Jacobian('holConstrPosition_rightFoot', J,[q,h], 0);

% Jac(h - h_des)
output = J;

end