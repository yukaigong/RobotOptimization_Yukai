function [ output ] = f_impact_RightStance_mex( vars )
%F_impact_RIGHTSTANCE Function wrapper to combine mathematica and matlab
% generated functions for comupting the impact constraint. 

% Input variables - {'q','dq','Fimp','dq_end'}
DOF = 22;
nFimp1 = 4;
nFimp2 = 2;
nFimp3 = 3;
nFimp4 = 3;

q = vars(1:DOF);
dq = vars(DOF+1:2*DOF);
Fimp1 = vars(2*DOF+1:2*DOF+nFimp1);
Fimp2 = vars(2*DOF+nFimp1+1:2*DOF+nFimp1+nFimp2);
Fimp3 = vars(2*DOF+nFimp1+nFimp2+1:2*DOF+nFimp1+nFimp2+nFimp3);
Fimp4 = vars(2*DOF+nFimp1+nFimp2+nFimp3+1:2*DOF+nFimp1+nFimp2+nFimp3+nFimp4);
dq_end = vars(2*DOF+nFimp1+nFimp2+nFimp3+nFimp4+1:end);

%% Construct dynamics constraint from mathematica + matlab generated functions
ImpactDynamics = zeros(DOF,1);
ImpactDynamics = call_mathematica_Function('impactDynamics', ImpactDynamics, [q,dq,dq_end], DOF);

% Fixed
Force1 = f_holConstrImpactForce_fixed([q,Fimp1]);
velConstr1 = f_holConstrVelocity_fixed([q,dq_end]);

% Four Bar
Force2 = f_holConstrImpactForce_fourbar([q,Fimp2]);
velConstr2 = f_holConstrVelocity_fourbar([q,dq_end]);

% Back toe
Force3 = f_holConstrImpactForce_toebottomleftback([q,Fimp3]);
velConstr3 = f_holConstrVelocity_toebottomleftback([q,dq_end]);

% Front toe
Force4 = f_holConstrImpactForce_toebottomleftfront([q,Fimp4]);
velConstr4 = f_holConstrVelocity_toebottomleftfront([q,dq_end]);


%   ImpactDynamics   Impact Forces
% (D*(dq_end - dq)) - (J'*Fimp) = 0
ImpactForce = Force1 + Force2 + Force3 + Force4;
output1 = ImpactDynamics - ImpactForce;
%  J'*dq_end = 0
output2 = [velConstr1; velConstr2; velConstr3; velConstr4];

output = [output1; output2];

end

