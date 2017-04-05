function out1 = f_hipCost_LeftStance(in1,weight)
%F_HIPCOST_LEFTSTANCE
%    OUT1 = F_HIPCOST_LEFTSTANCE(IN1,WEIGHT)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    01-Apr-2017 10:00:15

q8 = in1(:,8);
q16 = in1(:,16);
out1 = weight.*(q8.^2+q16.^2);
