function out1 = f_ddy_timeBased_RightStance(in1,in2)
%F_DDY_TIMEBASED_RIGHTSTANCE
%    OUT1 = F_DDY_TIMEBASED_RIGHTSTANCE(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    30-Mar-2017 15:27:40

Kd = in2(:,4);
Kp = in2(:,3);
N = in2(:,1);
T = in1(:,22);
a_1_1 = in1(:,23);
a_1_2 = in1(:,27);
a_1_3 = in1(:,31);
a_1_4 = in1(:,35);
a_1_5 = in1(:,39);
a_1_6 = in1(:,43);
a_2_1 = in1(:,24);
a_2_2 = in1(:,28);
a_2_3 = in1(:,32);
a_2_4 = in1(:,36);
a_2_5 = in1(:,40);
a_2_6 = in1(:,44);
a_3_1 = in1(:,25);
a_3_2 = in1(:,29);
a_3_3 = in1(:,33);
a_3_4 = in1(:,37);
a_3_5 = in1(:,41);
a_3_6 = in1(:,45);
a_4_1 = in1(:,26);
a_4_2 = in1(:,30);
a_4_3 = in1(:,34);
a_4_4 = in1(:,38);
a_4_5 = in1(:,42);
a_4_6 = in1(:,46);
ddq4 = in1(:,18);
ddq5 = in1(:,19);
ddq6 = in1(:,20);
ddq7 = in1(:,21);
dq4 = in1(:,11);
dq5 = in1(:,12);
dq6 = in1(:,13);
dq7 = in1(:,14);
index = in2(:,2);
q4 = in1(:,4);
q5 = in1(:,5);
q6 = in1(:,6);
q7 = in1(:,7);
t5 = N-1.0;
t6 = index-1.0;
t9 = 1.0./t5;
t10 = t6.*t9;
t2 = t10-1.0;
t3 = t2.^2;
t4 = t3.^2;
t7 = t6.^2;
t8 = t7.^2;
t11 = 1.0./T;
t12 = 1.0./t5.^4;
t13 = t6.*t9.*5.0;
t14 = t13-5.0;
t15 = 1.0./t5.^3;
t16 = 1.0./t5.^2;
t17 = 1.0./T.^2;
t18 = 1.0./t5.^5;
out1 = [ddq4+Kd.*(dq4+a_1_1.*t4.*t11.*5.0-a_2_1.*t4.*t11.*5.0+a_1_2.*t8.*t11.*t12.*5.0-a_2_2.*t8.*t11.*t12.*5.0+a_3_1.*t3.*t7.*t11.*t16.*3.0e1-a_4_1.*t3.*t7.*t11.*t16.*3.0e1-a_2_1.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_3_1.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_1_2.*t6.*t7.*t11.*t14.*t15.*4.0-a_4_1.*t2.*t6.*t7.*t11.*t15.*2.0e1)+Kp.*(q4+a_1_1.*t2.*t4-a_2_1.*t4.*t6.*t9.*5.0+a_1_2.*t8.*t12.*t14-a_2_2.*t6.*t8.*t18+a_3_1.*t2.*t3.*t7.*t16.*1.0e1-a_4_1.*t3.*t6.*t7.*t15.*1.0e1)+a_1_1.*t2.*t3.*t17.*2.0e1-a_2_1.*t2.*t3.*t17.*4.0e1+a_3_1.*t2.*t3.*t17.*2.0e1-a_2_1.*t3.*t6.*t9.*t17.*6.0e1+a_1_2.*t6.*t7.*t15.*t17.*4.0e1+a_1_2.*t7.*t14.*t16.*t17.*1.2e1+a_3_1.*t3.*t6.*t9.*t17.*1.2e2-a_2_2.*t6.*t7.*t15.*t17.*2.0e1+a_3_1.*t2.*t7.*t16.*t17.*6.0e1-a_4_1.*t3.*t6.*t9.*t17.*6.0e1-a_4_1.*t2.*t7.*t16.*t17.*1.2e2-a_4_1.*t6.*t7.*t15.*t17.*2.0e1;ddq5+Kd.*(dq5+a_3_2.*t4.*t11.*5.0-a_4_2.*t4.*t11.*5.0+a_3_3.*t8.*t11.*t12.*5.0-a_4_3.*t8.*t11.*t12.*5.0+a_1_3.*t3.*t7.*t11.*t16.*3.0e1-a_2_3.*t3.*t7.*t11.*t16.*3.0e1+a_1_3.*t2.*t3.*t6.*t9.*t11.*2.0e1-a_2_3.*t2.*t6.*t7.*t11.*t15.*2.0e1-a_4_2.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_3_3.*t6.*t7.*t11.*t14.*t15.*4.0)+Kp.*(q5+a_3_2.*t2.*t4-a_4_2.*t4.*t6.*t9.*5.0+a_3_3.*t8.*t12.*t14-a_4_3.*t6.*t8.*t18+a_1_3.*t2.*t3.*t7.*t16.*1.0e1-a_2_3.*t3.*t6.*t7.*t15.*1.0e1)+a_1_3.*t2.*t3.*t17.*2.0e1+a_3_2.*t2.*t3.*t17.*2.0e1-a_4_2.*t2.*t3.*t17.*4.0e1+a_1_3.*t3.*t6.*t9.*t17.*1.2e2+a_1_3.*t2.*t7.*t16.*t17.*6.0e1-a_2_3.*t3.*t6.*t9.*t17.*6.0e1-a_2_3.*t2.*t7.*t16.*t17.*1.2e2-a_2_3.*t6.*t7.*t15.*t17.*2.0e1-a_4_2.*t3.*t6.*t9.*t17.*6.0e1+a_3_3.*t6.*t7.*t15.*t17.*4.0e1+a_3_3.*t7.*t14.*t16.*t17.*1.2e1-a_4_3.*t6.*t7.*t15.*t17.*2.0e1;ddq6+Kd.*(dq6+a_1_4.*t4.*t11.*5.0-a_2_4.*t4.*t11.*5.0+a_1_5.*t8.*t11.*t12.*5.0-a_2_5.*t8.*t11.*t12.*5.0+a_3_4.*t3.*t7.*t11.*t16.*3.0e1-a_4_4.*t3.*t7.*t11.*t16.*3.0e1-a_2_4.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_3_4.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_1_5.*t6.*t7.*t11.*t14.*t15.*4.0-a_4_4.*t2.*t6.*t7.*t11.*t15.*2.0e1)+Kp.*(q6+a_1_4.*t2.*t4-a_2_4.*t4.*t6.*t9.*5.0+a_1_5.*t8.*t12.*t14-a_2_5.*t6.*t8.*t18+a_3_4.*t2.*t3.*t7.*t16.*1.0e1-a_4_4.*t3.*t6.*t7.*t15.*1.0e1)+a_1_4.*t2.*t3.*t17.*2.0e1-a_2_4.*t2.*t3.*t17.*4.0e1+a_3_4.*t2.*t3.*t17.*2.0e1-a_2_4.*t3.*t6.*t9.*t17.*6.0e1+a_1_5.*t6.*t7.*t15.*t17.*4.0e1+a_1_5.*t7.*t14.*t16.*t17.*1.2e1+a_3_4.*t3.*t6.*t9.*t17.*1.2e2-a_2_5.*t6.*t7.*t15.*t17.*2.0e1+a_3_4.*t2.*t7.*t16.*t17.*6.0e1-a_4_4.*t3.*t6.*t9.*t17.*6.0e1-a_4_4.*t2.*t7.*t16.*t17.*1.2e2-a_4_4.*t6.*t7.*t15.*t17.*2.0e1;ddq7+Kd.*(dq7+a_3_5.*t4.*t11.*5.0-a_4_5.*t4.*t11.*5.0+a_3_6.*t8.*t11.*t12.*5.0-a_4_6.*t8.*t11.*t12.*5.0+a_1_6.*t3.*t7.*t11.*t16.*3.0e1-a_2_6.*t3.*t7.*t11.*t16.*3.0e1+a_1_6.*t2.*t3.*t6.*t9.*t11.*2.0e1-a_2_6.*t2.*t6.*t7.*t11.*t15.*2.0e1-a_4_5.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_3_6.*t6.*t7.*t11.*t14.*t15.*4.0)+Kp.*(q7+a_3_5.*t2.*t4-a_4_5.*t4.*t6.*t9.*5.0+a_3_6.*t8.*t12.*t14-a_4_6.*t6.*t8.*t18+a_1_6.*t2.*t3.*t7.*t16.*1.0e1-a_2_6.*t3.*t6.*t7.*t15.*1.0e1)+a_1_6.*t2.*t3.*t17.*2.0e1+a_3_5.*t2.*t3.*t17.*2.0e1-a_4_5.*t2.*t3.*t17.*4.0e1+a_1_6.*t3.*t6.*t9.*t17.*1.2e2+a_1_6.*t2.*t7.*t16.*t17.*6.0e1-a_2_6.*t3.*t6.*t9.*t17.*6.0e1-a_2_6.*t2.*t7.*t16.*t17.*1.2e2-a_2_6.*t6.*t7.*t15.*t17.*2.0e1-a_4_5.*t3.*t6.*t9.*t17.*6.0e1+a_3_6.*t6.*t7.*t15.*t17.*4.0e1+a_3_6.*t7.*t14.*t16.*t17.*1.2e1-a_4_6.*t6.*t7.*t15.*t17.*2.0e1];
