function [ output ] = J_holonomicAccel_LeftStance_mex( vars )
%J_HOLONOMICACCEL Function wrapper to combine mathematica generated functions
% for comupting the jacobian of the holonomic acceleration constraint. 

% Input variables - {'q',dq','ddq'}
DOF = 16;
nFe1 = 4;
nFe2 = 3;
q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
ddq = vars(2*DOF+1:end);

%% Construct dynamics constraint from mathematica generated functions

% Four bar
J1 = J_holConstrAcceleration_fourBar([q,dq,ddq]);

% Right Foot
J2 = zeros(nFe2,3*DOF);
J2 = call_mathematica_Jacobian('holConstrAcceleration_LeftFoot', J2, [q,dq,ddq], 0);

% Jac(J*ddq+dJ*dq)
output = [J1; J2];

end
