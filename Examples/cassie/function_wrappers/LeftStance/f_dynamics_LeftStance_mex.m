function [ output ] = f_dynamics_LeftStance_mex( vars )
%F_DYNAMICS_LEFTSTANCE Function wrapper to combine mathematica and matlab
% generated functions for comupting the dynamics constraint. 

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

%% Construct dynamics constraint from mathematica + matlab generated functions

% Natural dynamics
NaturalDynamics = zeros(DOF,1);
NaturalDynamics = call_mathematica_Function('naturalDynamics', NaturalDynamics, [q,dq,ddq,u], DOF);

% Fixed
f_name = 'f_holConstrExternalForce_fixed';
Force1 = feval(f_name,[q,Fe1]);

% Four Bar
f_name = 'f_holConstrExternalForce_fourbar';
Force2 = feval(f_name,[q,Fe2]);

% Back toe
f_name = 'f_holConstrExternalForce_toebottomleftback';
Force3 = feval(f_name,[q,Fe3]);

% Front toe
f_name = 'f_holConstrExternalForce_toebottomleftfront';
Force4 = feval(f_name,[q,Fe4]);

%     NaturalDynamics    External Forces
% (D*ddq + C*dq + G - B*u) - (J'*Fe) = 0
ExternalForce = Force1 + Force2 + Force3 + Force4;
output = NaturalDynamics - ExternalForce;

