function out1 = f_yawCost_RightStance(in1,weight)
%F_YAWCOST_RIGHTSTANCE
%    OUT1 = F_YAWCOST_RIGHTSTANCE(IN1,WEIGHT)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    01-Apr-2017 10:00:08

q9 = in1(:,9);
q17 = in1(:,17);
out1 = weight.*(q9.^2+q17.^2);
