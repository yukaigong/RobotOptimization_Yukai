function [ output ] = J_dynamics_RightStance_mex( vars )
%J_DYNAMICS_RIGHTSTANCE Function wrapper to combine mathematica and matlab
% generated functions for comupting the jacobian of the dynamics constraint. 

% Input variables - {'q','dq','ddq','u','Fe'}
DOF = 7;
DOA = 4;

q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
ddq = vars(2*DOF+1:3*DOF);
u = vars(3*DOF+1:(3*DOF)+DOA);
Fe = vars((3*DOF+1)+DOA:end);

%% Construct dynamics constraint from mathematica generated functions
J_natural = zeros(DOF,length([q,dq,ddq,u,Fe]));
J_natural = call_mathematica_Jacobian('naturalDynamics', J_natural, [q,dq,ddq,u], DOF);

% External Force from holonomic constraints
J_tmp = zeros(DOF,length([q,Fe]));
J_tmp = call_mathematica_Jacobian('holConstrExternalForce_rightFoot', J_tmp, [q,Fe], 0);
% Construct Full Jacobian
J_lambda = zeros(DOF,length([q,dq,ddq,u,Fe]));
J_lambda(:,1:DOF) = J_tmp(:,1:DOF);
J_lambda(:,3*DOF+DOA+1:end) = J_tmp(:,DOF+1:end);

%     Natural Dynamics        External Forces
% Jac(D*ddq + C*dq + G - B*u) - Jac(J'*Fe) = 0
output = J_natural - J_lambda;

end
