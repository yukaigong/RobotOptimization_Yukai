function [ output ] = J_holonomicPos_LeftStance_mex( vars )
%J_HOLONOMICPOS Function wrapper to combine mathematica generated functions
% for comupting the jacobian of the holonomic position constraint. 

% Input variables - {'q',h'}
DOF = 16;
nh1 = 4; % Four Bar
nh2 = 3; % Stance Foot

q = vars(1:DOF);
h1 = vars(DOF+1:DOF+nh1);
h2 = vars(DOF+nh1+1:end);

%% Construct dynamics constraint from mathematica generated functions

% Four bar
J_tmp = J_holConstrPosition_fourBar([q,h1]);
% Construct Full Jacobian
J1 = zeros(nh1,DOF+nh1+nh2);
J1(:,1:DOF) = J_tmp(:,1:DOF);
J1(:,DOF+1:DOF+nh1) = J_tmp(:,DOF+1:end);

% Stance Foot
J_tmp = zeros(nh2,DOF+nh2);
J_tmp = call_mathematica_Jacobian('holConstrPosition_LeftFoot', J_tmp, [q,h2], 0);
% Construct Full Jacobian
J2 = zeros(nh2,DOF+nh1+nh2);
J2(:,1:DOF) = J_tmp(:,1:DOF);
J2(:,DOF+nh1+1:end) = J_tmp(:,DOF+1:end);

output = [J1; J2];

end


