function [] = torque_costs(DOA, OPT_PATH, domainName)
%% Function to generate the torque cost functions for optimization
%   Author: Ross Hartley
%   Date:   12/11/2016
%

%% Generate guard constraints
u = sym('u',[DOA,1]);

% Sum of squared torques
cost = sum(u.^2);
vars = [u].';
J_cost = jacobian(cost,vars);
symbolicToFunction(['f_torqueCost_',domainName], {vars}, {cost}, OPT_PATH)
symbolicToFunction(['J_torqueCost_',domainName], {vars}, {J_cost}, OPT_PATH)



end
