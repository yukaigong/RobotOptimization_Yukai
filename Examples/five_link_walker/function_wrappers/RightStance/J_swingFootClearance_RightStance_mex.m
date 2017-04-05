function [ output ] = J_swingFootClearance_RightStance_mex( vars, extra )
%J_SWINGFOOTCLEARANCE Function wrapper to combine mathematica generated 
% functions for computing the jacobian of the foot clearance constraint. 

% Input variables - {'q'}
q = vars;
footClearance_des = extra;

%% Construct dynamics constraint from mathematica generated functions
tmp = reshape(J_leftFoot(q),[],length(q));
output = tmp(2,:);

end


