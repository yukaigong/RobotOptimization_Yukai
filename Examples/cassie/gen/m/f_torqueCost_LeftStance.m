function out1 = f_torqueCost_LeftStance(in1)
%F_TORQUECOST_LEFTSTANCE
%    OUT1 = F_TORQUECOST_LEFTSTANCE(IN1)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    01-Apr-2017 09:59:53

u1 = in1(:,1);
u2 = in1(:,2);
u3 = in1(:,3);
u4 = in1(:,4);
u5 = in1(:,5);
u6 = in1(:,6);
u7 = in1(:,7);
u8 = in1(:,8);
u9 = in1(:,9);
u10 = in1(:,10);
out1 = u1.^2+u2.^2+u3.^2+u4.^2+u5.^2+u6.^2+u7.^2+u8.^2+u9.^2+u10.^2;