function [ output ] = J_guard_groundHeight_RightStance_mex( vars, extra )
%J_GUARD_GROUNDHEIGHT Function wrapper to combine mathematica generated 
% functions for comupting the jacobian of the guard constraint. 

% Input variables - {'q'}
% Extra variables - groundHeight
q = vars;
groundHeight = extra;

%% Construct dynamics constraint from mathematica generated functions
tmp = reshape(J_leftFoot(q),[],length(q));

% Jac(swingFootHeight - groundHeight)
output = tmp(2,:);


end