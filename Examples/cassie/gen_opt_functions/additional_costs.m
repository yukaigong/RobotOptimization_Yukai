function [] = additional_costs(OPT_PATH, domainName)
%% Function to generate the additional cost functions for optimization
%   Author: Ross Hartley
%   Date:   12/11/2016
%

%% Generate guard constraints
q = sym('q',[22,1]);
u = sym('u',[10,1]);

syms weight
cost = weight * sum(q([8,16]).^2);
vars = [q].';
extra = [weight].';
J_cost = jacobian(cost,vars);
symbolicToFunction(['f_hipCost_',domainName], {vars,extra}, {cost}, OPT_PATH)
symbolicToFunction(['J_hipCost_',domainName], {vars,extra}, {J_cost}, OPT_PATH)

syms weight
cost = weight * sum(q([9,17]).^2);
vars = [q].';
extra = [weight].';
J_cost = jacobian(cost,vars);
symbolicToFunction(['f_yawCost_',domainName], {vars,extra}, {cost}, OPT_PATH)
symbolicToFunction(['J_yawCost_',domainName], {vars,extra}, {J_cost}, OPT_PATH)



end
