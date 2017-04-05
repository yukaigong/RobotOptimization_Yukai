function [ output ] = J_impact_RightStance_mex( vars )
%J_IMPACT_RIGHTSTANCE Function wrapper to combine mathematica and matlab
% generated functions for comupting the jacobian of the impact constraint. 

% Input variables - {'q','dq','Fimp','dq_end'}
DOF = 5;
nFimp = 2;

q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
Fimp = vars(2*DOF+1:2*DOF+nFimp);
dq_end = vars((2*DOF+nFimp+1):end);

%% Construct dynamics constraint from mathematica generated functions

% Impact Dynamics
J_tmp = zeros(DOF,3*DOF);
J_tmp = call_mathematica_Jacobian('impactDynamics', J_tmp, [q,dq,dq_end], DOF);
% Construct Full Jacobian
J_impactDynamics = zeros(DOF,3*DOF+nFimp);
J_impactDynamics(:,1:2*DOF) = J_tmp(:,1:2*DOF);
J_impactDynamics(:,(2*DOF+nFimp+1):end) = J_tmp(:,2*DOF+1:end);

% Impact Forces
J_tmp = zeros(DOF,DOF+nFimp);
J_tmp = call_mathematica_Jacobian('holConstrImpactForce_leftFoot', J_tmp, [q,Fimp], 0);
% Construct Full Jacobian
J_impactForce = zeros(DOF,3*DOF+nFimp);
J_impactForce(:,1:DOF) = J_tmp(:,1:DOF);
J_impactForce(:,2*DOF+1:2*DOF+nFimp) = J_tmp(:,DOF+1:end);

% Swing Foot Velocity
J_tmp = zeros(nFimp,2*DOF);
J_tmp = call_mathematica_Jacobian('holConstrVelocity_leftFoot', J_tmp, [q,dq_end], 0);
% Construct Full Jacobian
J_swingFootVelocity = zeros(nFimp,3*DOF+nFimp);
J_swingFootVelocity(:,1:DOF) = J_tmp(:,1:DOF);
J_swingFootVelocity(:,(2*DOF+nFimp+1):end) = J_tmp(:,DOF+1:end);

% Jac(D*(dq_end - dq)) - Jac(J'*Fimp) = 0
output1 = J_impactDynamics - J_impactForce;
% Jac(J'*dq_end)
output2 = J_swingFootVelocity;

output = [output1; output2];
end

