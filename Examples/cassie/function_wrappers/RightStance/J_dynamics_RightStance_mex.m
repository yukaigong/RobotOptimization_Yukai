function [ output ] = J_dynamics_RightStance_mex( vars )
%J_DYNAMICS_RIGHTSTANCE Function wrapper to combine mathematica and matlab
% generated functions for comupting the jacobian of the dynamics constraint. 

% Input variables - {'q','dq','ddq','u','Fe'}
DOF = 22;
DOA = 10;
nFe1 = 4;
nFe2 = 2;
nFe3 = 3;
nFe4 = 3;

q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
ddq = vars(2*DOF+1:3*DOF);
u = vars(3*DOF+1:(3*DOF)+DOA);
Fe1 = vars(3*DOF+DOA+1:3*DOF+DOA+nFe1);
Fe2 = vars(3*DOF+DOA+nFe1+1:3*DOF+DOA+nFe1+nFe2);
Fe3 = vars(3*DOF+DOA+nFe1+nFe2+1:3*DOF+DOA+nFe1+nFe2+nFe3);
Fe4 = vars(3*DOF+DOA+nFe1+nFe2+nFe3+1:end);

%% Construct dynamics constraint from mathematica generated functions
J_NaturalDynamics = zeros(DOF,length([q,dq,ddq,u,Fe1,Fe2,Fe3,Fe4]));
J_NaturalDynamics = call_mathematica_Jacobian('naturalDynamics', J_NaturalDynamics, [q,dq,ddq,u], DOF);

% Fixed
J_tmp = J_holConstrExternalForce_fixed([q,Fe1]);
% Construct Full Jacobian
J_Force1 = zeros(size(J_NaturalDynamics));
J_Force1(:,1:DOF) = J_tmp(:,1:DOF);
J_Force1(:,3*DOF+DOA+1:3*DOF+DOA+nFe1) = J_tmp(:,DOF+1:end);

% Four Bar
J_tmp = J_holConstrExternalForce_fourbar([q,Fe2]);
% Construct Full Jacobian
J_Force2 = zeros(size(J_NaturalDynamics));
J_Force2(:,1:DOF) = J_tmp(:,1:DOF);
J_Force2(:,3*DOF+DOA+nFe1+1:3*DOF+DOA+nFe1+nFe2) = J_tmp(:,DOF+1:end);


% Back toe
J_tmp = zeros(DOF,length([q,Fe3]));
J_tmp = call_mathematica_Jacobian('holConstrExternalForce_toebottomrightback', J_tmp, [q,Fe3], 0);
% Construct Full Jacobian
J_Force3 = zeros(size(J_NaturalDynamics));
J_Force3(:,1:DOF) = J_tmp(:,1:DOF);
J_Force3(:,3*DOF+DOA+nFe1+nFe2+1:3*DOF+DOA+nFe1+nFe2+nFe3) = J_tmp(:,DOF+1:end);


% Front toe
J_tmp = zeros(DOF,length([q,Fe4]));
J_tmp = call_mathematica_Jacobian('holConstrExternalForce_toebottomrightfront', J_tmp, [q,Fe4], 0);
% Construct Full Jacobian
J_Force4 = zeros(size(J_NaturalDynamics));
J_Force4(:,1:DOF) = J_tmp(:,1:DOF);
J_Force4(:,3*DOF+DOA+nFe1+nFe2+nFe3+1:end) = J_tmp(:,DOF+1:end);

%       J_NaturalDynamics      J_ExternalForce
% Jac(D*ddq + C*dq + G - B*u) - Jac(J'*Fe) = 0
J_ExternalForce = J_Force1 + J_Force2 + J_Force3 + J_Force4;
output = J_NaturalDynamics - J_ExternalForce;

end
