function out1 = f_h0_RightStance(in1,in2)
%F_H0_RIGHTSTANCE
%    OUT1 = F_H0_RIGHTSTANCE(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    13-Apr-2017 16:28:32

h1 = in1(:,1);
h2 = in1(:,2);
h3 = in1(:,3);
h4 = in1(:,4);
h5 = in1(:,5);
h6 = in1(:,6);
h7 = in1(:,7);
h8 = in1(:,8);
h9 = in1(:,9);
h11 = in1(:,11);
h12 = in1(:,12);
h_des1 = in2(:,1);
h_des2 = in2(:,2);
h_des3 = in2(:,3);
h_des4 = in2(:,4);
h_des5 = in2(:,5);
h_des6 = in2(:,6);
h_des7 = in2(:,7);
h_des8 = in2(:,8);
h_des9 = in2(:,9);
h_des11 = in2(:,11);
h_des12 = in2(:,12);
out1 = [h1-h_des1;h2-h_des2;h3-h_des3;h4-h_des4;h5-h_des5;h6-h_des6;h7-h_des7;h8-h_des8;h9-h_des9;0.0;h11-h_des11;h12-h_des12];
