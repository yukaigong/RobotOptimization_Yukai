function [ output ] = f_dynamics_RightStance_mex( vars )
%F_DYNAMICS_RIGHTSTANCE Function wrapper to combine mathematica and matlab
% generated functions for comupting the dynamics constraint. 

% Input variables - {'q','dq','ddq','u','Fe'}
DOF = 5;
DOA = 2;

q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
ddq = vars(2*DOF+1:3*DOF);
u = vars(3*DOF+1:(3*DOF)+DOA);
Fe = vars((3*DOF+1)+DOA:end);

%% Construct dynamics constraint from mathematica + matlab generated functions

% Natural dynamics
naturalDynamics = zeros(DOF,1);
naturalDynamics = call_mathematica_Function('naturalDynamics', naturalDynamics, [q,dq,ddq,u], DOF);

% External dynamics
externalDynamics = f_holConstrExternalForce_rightFoot([q,Fe]);

%     Natural Dynamics    External Forces
% (D*ddq + C*dq + G - B*u) - (J'*Fe) = 0
output = naturalDynamics - externalDynamics;

end

