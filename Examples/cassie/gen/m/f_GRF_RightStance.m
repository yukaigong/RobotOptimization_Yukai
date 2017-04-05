function out1 = f_GRF_RightStance(in1,mu)
%F_GRF_RIGHTSTANCE
%    OUT1 = F_GRF_RIGHTSTANCE(IN1,MU)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    01-Apr-2017 10:02:10

Fe7 = in1(:,7);
Fe8 = in1(:,8);
Fe9 = in1(:,9);
Fe10 = in1(:,10);
Fe11 = in1(:,11);
Fe12 = in1(:,12);
out1 = [sqrt(Fe7.^2+Fe8.^2)-Fe9.*mu;sqrt(Fe10.^2+Fe11.^2)-Fe12.*mu];
