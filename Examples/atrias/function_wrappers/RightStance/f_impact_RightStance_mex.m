function [ output ] = f_impact_RightStance_mex( vars )
%F_impact_RIGHTSTANCE Function wrapper to combine mathematica and matlab
% generated functions for comupting the impact constraint. 

% Input variables - {'q','dq','Fimp','dq_end'}
DOF = 16;
nFimp1 = 4;
nFimp2 = 3;

q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
Fimp1 = vars(2*DOF+1:2*DOF+nFimp1);
Fimp2 = vars(2*DOF+nFimp1+1:2*DOF+nFimp1+nFimp2);
dq_end = vars(2*DOF+nFimp1+nFimp2+1:end);

%% Construct dynamics constraint from mathematica + matlab generated functions
ImpactDynamics = zeros(DOF,1);
ImpactDynamics = call_mathematica_Function('impactDynamics', ImpactDynamics, [q,dq,dq_end], DOF);

% Four Bar
Force1 = f_holConstrImpactForce_fourBar([q,Fimp1]);
velConstr1 = f_holConstrVelocity_fourBar([q,dq_end]);

% Swing Foot
Force2 = f_holConstrImpactForce_LeftFoot([q,Fimp2]);
velConstr2 = f_holConstrVelocity_LeftFoot([q,dq_end]);

%   ImpactDynamics   Impact Forces
% (D*(dq_end - dq)) - (J'*Fimp) = 0
ImpactForce = Force1 + Force2;
output1 = ImpactDynamics - ImpactForce;
%  J'*dq_end = 0
output2 = [velConstr1; velConstr2];

output = [output1; output2];
end

