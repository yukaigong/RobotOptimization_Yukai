function [ output ] = f_impact_RightStance_mex( vars )
%F_impact_RIGHTSTANCE Function wrapper to combine mathematica and matlab
% generated functions for comupting the impact constraint. 

% Input variables - {'q','dq','Fimp','dq_end'}
DOF = 7;
nFimp = 2;

q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
Fimp = vars(2*DOF+1:2*DOF+nFimp);
dq_end = vars((2*DOF+nFimp+1):end);

%% Construct dynamics constraint from mathematica + matlab generated functions
impactDynamics = zeros(DOF,1);
impactDynamics = call_mathematica_Function('impactDynamics', impactDynamics, [q,dq,dq_end], DOF);

impactForce = f_holConstrImpactForce_leftFoot([q,Fimp]);
swingFootVelocity = f_holConstrVelocity_leftFoot([q,dq_end]);

%   impactDynamics   impactForce
% (D*(dq_end - dq)) - (J'*Fimp) = 0
output1 = impactDynamics - impactForce;
%  J'*dq_end = 0
output2 = swingFootVelocity;

output = [output1; output2];

end

