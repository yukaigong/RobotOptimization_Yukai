function out1 = f_torqueCost_RightStance(in1)
%F_TORQUECOST_RIGHTSTANCE
%    OUT1 = F_TORQUECOST_RIGHTSTANCE(IN1)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    30-Mar-2017 15:28:56

u1 = in1(:,1);
u2 = in1(:,2);
u3 = in1(:,3);
u4 = in1(:,4);
out1 = u1.^2+u2.^2+u3.^2+u4.^2;
