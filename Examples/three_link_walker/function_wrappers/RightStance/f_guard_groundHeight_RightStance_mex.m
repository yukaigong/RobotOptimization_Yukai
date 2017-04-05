function [ output ] = f_guard_groundHeight_RightStance_mex( vars, extra )
%F_GUARD_GROUNDHEIGHT Function wrapper to combine mathematica generated 
% functions for comupting the guard constraint. 

% Input variables - {'q'}
% Extra variables - groundHeight
q = vars;
groundHeight = extra;

%% Construct constraint from mathematica generated functions
swingFoot = p_leftFoot(q);

% swingFootHeight - groundHeight = 0
output = swingFoot(2) - groundHeight;

