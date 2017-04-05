function [] = virtual_constraints(DOF, outputs_sym, M, OPT_PATH, domainName)
%% Function to generate the virtual constraint functions for optimization
%   Author: Ross Hartley
%   Date:   12/11/2016
%

%% Generate virtual constraints
nOutputs = length(outputs_sym);
q = sym('q',[DOF,1]);
dq = sym('dq',[DOF,1]);
ddq = sym('ddq',[DOF,1]);
a = reshape(sym('a_',[nOutputs,(M+1)]),[],1);

% Symbolic Bezier Functions
syms s
hd = sym(zeros(nOutputs, 1));
for i=1:(M+1):length(a)
    j = (i - 1) / (M + 1) + 1;
    hd(j,1) = ComputeBezier(a(i:(i+M)).', s);
end

% Time based virtual constraints
syms t T N index
s = t/T;
ds = 1/T;
hd = subs(hd); 

% Compute y, dy, ddy
h = outputs_sym;
y = h - hd; % outputs
dy = jacobian(h,q)*dq - jacobian(hd,t);
ddy = jacobian(jacobian(h,q)*dq,[q;dq])*[dq;ddq] - jacobian(jacobian(hd,t),t);

% Substitute nodes in
deltaT = T/(N-1);
t = (index-1)*deltaT;
s = subs(s);

% Substitute into y, dy, ddy
y = subs(y);
dy = subs(dy);
ddy = subs(ddy);

% y = 0
constraint = y;
vars = [q;T;a].';
extra = [N;index].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_y_timeBased_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_y_timeBased_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)

% dy = 0
constraint = dy;
vars = [q;dq;T;a].';
extra = [N;index].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_dy_timeBased_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_dy_timeBased_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)

% ddy = Kp*y + Kd*dy
syms Kp Kd
constraint = ddy + Kd*dy + Kp*y;
vars = [q;dq;ddq;T;a].';
extra = [N;index;Kp;Kd].';
J_constraint = jacobian(constraint,vars);
symbolicToFunction(['f_ddy_timeBased_',domainName], {vars,extra}, {constraint}, OPT_PATH)
symbolicToFunction(['J_ddy_timeBased_',domainName], {vars,extra}, {J_constraint}, OPT_PATH)

end
