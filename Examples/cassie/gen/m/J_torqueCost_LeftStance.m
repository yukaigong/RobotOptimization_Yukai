function out1 = J_torqueCost_LeftStance(in1)
%J_TORQUECOST_LEFTSTANCE
%    OUT1 = J_TORQUECOST_LEFTSTANCE(IN1)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    01-Apr-2017 09:59:57

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
out1 = [u1.*2.0,u2.*2.0,u3.*2.0,u4.*2.0,u5.*2.0,u6.*2.0,u7.*2.0,u8.*2.0,u9.*2.0,u10.*2.0];
