function [ output ] = f_dynamics_LeftStance_mex( vars )
%F_DYNAMICS_RIGHTSTANCE Function wrapper to combine mathematica and matlab
% generated functions for comupting the dynamics constraint. 

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

%% Construct dynamics constraint from mathematica + matlab generated functions
% Natural dynamics
NaturalDynamics = zeros(DOF,1);
NaturalDynamics = call_mathematica_Function('naturalDynamics', NaturalDynamics, [q,dq,ddq,u], DOF);

% Four Bar
Force1 = f_holConstrExternalForce_fourBar([q,Fe1]);

% Right Foot
Force2 = f_holConstrExternalForce_LeftFoot([q,Fe2]);

%     NaturalDynamics    External Forces
% (D*ddq + C*dq + G - B*u) - (J'*Fe) = 0
ExternalForce = Force1 + Force2;
output = NaturalDynamics - ExternalForce;

end