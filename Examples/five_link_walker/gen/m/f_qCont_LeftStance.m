function out1 = f_qCont_LeftStance(in1)
%F_QCONT_LEFTSTANCE
%    OUT1 = F_QCONT_LEFTSTANCE(IN1)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    30-Mar-2017 15:26:56

q1_1 = in1(:,1);
q1_2 = in1(:,2);
q1_3 = in1(:,3);
q1_4 = in1(:,4);
q1_5 = in1(:,5);
q1_6 = in1(:,6);
q1_7 = in1(:,7);
q2_1 = in1(:,8);
q2_2 = in1(:,9);
q2_3 = in1(:,10);
q2_4 = in1(:,11);
q2_5 = in1(:,12);
q2_6 = in1(:,13);
q2_7 = in1(:,14);
out1 = [-q1_1+q2_1;-q1_2+q2_2;-q1_3+q2_3;-q1_4+q2_4;-q1_5+q2_5;-q1_6+q2_6;-q1_7+q2_7];
