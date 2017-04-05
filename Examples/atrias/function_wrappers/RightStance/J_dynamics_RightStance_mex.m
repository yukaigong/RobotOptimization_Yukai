function [ output ] = J_dynamics_RightStance_mex( vars )
%J_DYNAMICS_RIGHTSTANCE Function wrapper to combine mathematica and matlab
% generated functions for comupting the jacobian of the dynamics constraint. 

% Input variables - {'q','dq','ddq','u','Fe'}
DOF = 16;
DOA = 6;
nFe1 = 4;
nFe2 = 3;

q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
ddq = vars(2*DOF+1:3*DOF);
u = vars(3*DOF+1:(3*DOF)+DOA);
Fe1 = vars(3*DOF+DOA+1:3*DOF+DOA+nFe1);
Fe2 = vars(3*DOF+DOA+nFe1+1:end);

%% Construct dynamics constraint from mathematica generated functions
J_NaturalDynamics = zeros(DOF,length([q,dq,ddq,u,Fe1,Fe2]));
J_NaturalDynamics = call_mathematica_Jacobian('naturalDynamics', J_NaturalDynamics, [q,dq,ddq,u], DOF);

% Four Bar
J_Force1 = zeros(size(J_NaturalDynamics));
J_tmp = J_holConstrExternalForce_fourBar([q,Fe1]);
% Construct Full Jacobian
J_Force1(:,1:DOF) = J_tmp(:,1:DOF);
J_Force1(:,3*DOF+DOA+1:3*DOF+DOA+nFe1) = J_tmp(:,DOF+1:end);

% Stance Foot
J_tmp = zeros(DOF,length([q,Fe2]));
J_tmp = call_mathematica_Jacobian('holConstrExternalForce_RightFoot', J_tmp, [q,Fe2], 0);
% Construct Full Jacobian
J_Force2 = zeros(size(J_NaturalDynamics));
J_Force2(:,1:DOF) = J_tmp(:,1:DOF); % q
J_Force2(:,3*DOF+DOA+nFe1+1:end) = J_tmp(:,DOF+1:end); % Fe2

%       J_NaturalDynamics      J_ExternalForce
% Jac(D*ddq + C*dq + G - B*u) - Jac(J'*Fe) = 0
J_ExternalForce = J_Force1 + J_Force2;
output = J_NaturalDynamics - J_ExternalForce;

end
