function out1 = f_ddy_timeBased_RightStance(in1,in2)
%F_DDY_TIMEBASED_RIGHTSTANCE
%    OUT1 = F_DDY_TIMEBASED_RIGHTSTANCE(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    01-Apr-2017 09:57:24

Kd = in2(:,4);
Kp = in2(:,3);
N = in2(:,1);
T = in1(:,67);
a_1_1 = in1(:,68);
a_1_2 = in1(:,78);
a_1_3 = in1(:,88);
a_1_4 = in1(:,98);
a_1_5 = in1(:,108);
a_1_6 = in1(:,118);
a_2_1 = in1(:,69);
a_2_2 = in1(:,79);
a_2_3 = in1(:,89);
a_2_4 = in1(:,99);
a_2_5 = in1(:,109);
a_2_6 = in1(:,119);
a_3_1 = in1(:,70);
a_3_2 = in1(:,80);
a_3_3 = in1(:,90);
a_3_4 = in1(:,100);
a_3_5 = in1(:,110);
a_3_6 = in1(:,120);
a_4_1 = in1(:,71);
a_4_2 = in1(:,81);
a_4_3 = in1(:,91);
a_4_4 = in1(:,101);
a_4_5 = in1(:,111);
a_4_6 = in1(:,121);
a_5_1 = in1(:,72);
a_5_2 = in1(:,82);
a_5_3 = in1(:,92);
a_5_4 = in1(:,102);
a_5_5 = in1(:,112);
a_6_1 = in1(:,73);
a_6_2 = in1(:,83);
a_6_3 = in1(:,93);
a_6_4 = in1(:,103);
a_6_5 = in1(:,113);
a_7_1 = in1(:,74);
a_7_2 = in1(:,84);
a_7_3 = in1(:,94);
a_7_4 = in1(:,104);
a_7_5 = in1(:,114);
a_8_1 = in1(:,75);
a_8_2 = in1(:,85);
a_8_3 = in1(:,95);
a_8_4 = in1(:,105);
a_8_5 = in1(:,115);
a_9_1 = in1(:,76);
a_9_2 = in1(:,86);
a_9_3 = in1(:,96);
a_9_4 = in1(:,106);
a_9_5 = in1(:,116);
a_10_1 = in1(:,77);
a_10_2 = in1(:,87);
a_10_3 = in1(:,97);
a_10_4 = in1(:,107);
a_10_5 = in1(:,117);
ddq8 = in1(:,52);
ddq9 = in1(:,53);
ddq10 = in1(:,54);
ddq11 = in1(:,55);
ddq14 = in1(:,58);
ddq16 = in1(:,60);
ddq17 = in1(:,61);
ddq18 = in1(:,62);
ddq19 = in1(:,63);
dq8 = in1(:,30);
dq9 = in1(:,31);
dq10 = in1(:,32);
dq11 = in1(:,33);
dq14 = in1(:,36);
dq16 = in1(:,38);
dq17 = in1(:,39);
dq18 = in1(:,40);
dq19 = in1(:,41);
index = in2(:,2);
q8 = in1(:,8);
q9 = in1(:,9);
q10 = in1(:,10);
q11 = in1(:,11);
q14 = in1(:,14);
q16 = in1(:,16);
q17 = in1(:,17);
q18 = in1(:,18);
q19 = in1(:,19);
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
t13 = 1.0./t5.^3;
t14 = t6.*t9.*5.0;
t15 = t14-5.0;
t16 = 1.0./t5.^2;
t17 = 1.0./T.^2;
t18 = 1.0./t5.^5;
out1 = [ddq8+Kd.*(dq8+a_1_1.*t4.*t11.*5.0-a_2_1.*t4.*t11.*5.0+a_5_1.*t8.*t11.*t12.*5.0-a_6_1.*t8.*t11.*t12.*5.0+a_3_1.*t3.*t7.*t11.*t16.*3.0e1-a_4_1.*t3.*t7.*t11.*t16.*3.0e1-a_2_1.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_3_1.*t2.*t3.*t6.*t9.*t11.*2.0e1-a_4_1.*t2.*t6.*t7.*t11.*t13.*2.0e1+a_5_1.*t6.*t7.*t11.*t13.*t15.*4.0)+Kp.*(q8+a_1_1.*t2.*t4-a_2_1.*t4.*t6.*t9.*5.0+a_5_1.*t8.*t12.*t15-a_6_1.*t6.*t8.*t18+a_3_1.*t2.*t3.*t7.*t16.*1.0e1-a_4_1.*t3.*t6.*t7.*t13.*1.0e1)+a_1_1.*t2.*t3.*t17.*2.0e1-a_2_1.*t2.*t3.*t17.*4.0e1+a_3_1.*t2.*t3.*t17.*2.0e1-a_2_1.*t3.*t6.*t9.*t17.*6.0e1+a_3_1.*t3.*t6.*t9.*t17.*1.2e2+a_3_1.*t2.*t7.*t16.*t17.*6.0e1-a_4_1.*t3.*t6.*t9.*t17.*6.0e1-a_4_1.*t2.*t7.*t16.*t17.*1.2e2-a_4_1.*t6.*t7.*t13.*t17.*2.0e1+a_5_1.*t6.*t7.*t13.*t17.*4.0e1-a_6_1.*t6.*t7.*t13.*t17.*2.0e1+a_5_1.*t7.*t15.*t16.*t17.*1.2e1;ddq9+Kd.*(dq9+a_7_1.*t4.*t11.*5.0-a_8_1.*t4.*t11.*5.0+a_1_2.*t8.*t11.*t12.*5.0-a_2_2.*t8.*t11.*t12.*5.0+a_9_1.*t3.*t7.*t11.*t16.*3.0e1-a_10_1.*t3.*t7.*t11.*t16.*3.0e1+a_1_2.*t6.*t7.*t11.*t13.*t15.*4.0-a_8_1.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_9_1.*t2.*t3.*t6.*t9.*t11.*2.0e1-a_10_1.*t2.*t6.*t7.*t11.*t13.*2.0e1)+Kp.*(q9+a_7_1.*t2.*t4+a_1_2.*t8.*t12.*t15-a_2_2.*t6.*t8.*t18-a_8_1.*t4.*t6.*t9.*5.0+a_9_1.*t2.*t3.*t7.*t16.*1.0e1-a_10_1.*t3.*t6.*t7.*t13.*1.0e1)+a_7_1.*t2.*t3.*t17.*2.0e1-a_8_1.*t2.*t3.*t17.*4.0e1+a_9_1.*t2.*t3.*t17.*2.0e1+a_1_2.*t6.*t7.*t13.*t17.*4.0e1-a_2_2.*t6.*t7.*t13.*t17.*2.0e1+a_1_2.*t7.*t15.*t16.*t17.*1.2e1-a_8_1.*t3.*t6.*t9.*t17.*6.0e1+a_9_1.*t3.*t6.*t9.*t17.*1.2e2+a_9_1.*t2.*t7.*t16.*t17.*6.0e1-a_10_1.*t3.*t6.*t9.*t17.*6.0e1-a_10_1.*t2.*t7.*t16.*t17.*1.2e2-a_10_1.*t6.*t7.*t13.*t17.*2.0e1;ddq10+Kd.*(dq10+a_3_2.*t4.*t11.*5.0-a_4_2.*t4.*t11.*5.0+a_7_2.*t8.*t11.*t12.*5.0-a_8_2.*t8.*t11.*t12.*5.0+a_5_2.*t3.*t7.*t11.*t16.*3.0e1-a_6_2.*t3.*t7.*t11.*t16.*3.0e1-a_4_2.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_5_2.*t2.*t3.*t6.*t9.*t11.*2.0e1-a_6_2.*t2.*t6.*t7.*t11.*t13.*2.0e1+a_7_2.*t6.*t7.*t11.*t13.*t15.*4.0)+Kp.*(q10+a_3_2.*t2.*t4-a_4_2.*t4.*t6.*t9.*5.0+a_7_2.*t8.*t12.*t15-a_8_2.*t6.*t8.*t18+a_5_2.*t2.*t3.*t7.*t16.*1.0e1-a_6_2.*t3.*t6.*t7.*t13.*1.0e1)+a_3_2.*t2.*t3.*t17.*2.0e1-a_4_2.*t2.*t3.*t17.*4.0e1+a_5_2.*t2.*t3.*t17.*2.0e1-a_4_2.*t3.*t6.*t9.*t17.*6.0e1+a_5_2.*t3.*t6.*t9.*t17.*1.2e2+a_5_2.*t2.*t7.*t16.*t17.*6.0e1-a_6_2.*t3.*t6.*t9.*t17.*6.0e1-a_6_2.*t2.*t7.*t16.*t17.*1.2e2-a_6_2.*t6.*t7.*t13.*t17.*2.0e1+a_7_2.*t6.*t7.*t13.*t17.*4.0e1-a_8_2.*t6.*t7.*t13.*t17.*2.0e1+a_7_2.*t7.*t15.*t16.*t17.*1.2e1;ddq11+Kd.*(dq11+a_9_2.*t4.*t11.*5.0-a_10_2.*t4.*t11.*5.0+a_3_3.*t8.*t11.*t12.*5.0-a_4_3.*t8.*t11.*t12.*5.0+a_1_3.*t3.*t7.*t11.*t16.*3.0e1-a_2_3.*t3.*t7.*t11.*t16.*3.0e1+a_1_3.*t2.*t3.*t6.*t9.*t11.*2.0e1-a_2_3.*t2.*t6.*t7.*t11.*t13.*2.0e1+a_3_3.*t6.*t7.*t11.*t13.*t15.*4.0-a_10_2.*t2.*t3.*t6.*t9.*t11.*2.0e1)+Kp.*(q11+a_9_2.*t2.*t4+a_3_3.*t8.*t12.*t15-a_4_3.*t6.*t8.*t18-a_10_2.*t4.*t6.*t9.*5.0+a_1_3.*t2.*t3.*t7.*t16.*1.0e1-a_2_3.*t3.*t6.*t7.*t13.*1.0e1)+a_1_3.*t2.*t3.*t17.*2.0e1+a_9_2.*t2.*t3.*t17.*2.0e1-a_10_2.*t2.*t3.*t17.*4.0e1+a_1_3.*t3.*t6.*t9.*t17.*1.2e2+a_1_3.*t2.*t7.*t16.*t17.*6.0e1-a_2_3.*t3.*t6.*t9.*t17.*6.0e1-a_2_3.*t2.*t7.*t16.*t17.*1.2e2-a_2_3.*t6.*t7.*t13.*t17.*2.0e1+a_3_3.*t6.*t7.*t13.*t17.*4.0e1-a_4_3.*t6.*t7.*t13.*t17.*2.0e1+a_3_3.*t7.*t15.*t16.*t17.*1.2e1-a_10_2.*t3.*t6.*t9.*t17.*6.0e1;ddq14+Kd.*(dq14+a_5_3.*t4.*t11.*5.0-a_6_3.*t4.*t11.*5.0+a_9_3.*t8.*t11.*t12.*5.0-a_10_3.*t8.*t11.*t12.*5.0+a_7_3.*t3.*t7.*t11.*t16.*3.0e1-a_8_3.*t3.*t7.*t11.*t16.*3.0e1-a_6_3.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_7_3.*t2.*t3.*t6.*t9.*t11.*2.0e1-a_8_3.*t2.*t6.*t7.*t11.*t13.*2.0e1+a_9_3.*t6.*t7.*t11.*t13.*t15.*4.0)+Kp.*(q14+a_5_3.*t2.*t4-a_6_3.*t4.*t6.*t9.*5.0+a_9_3.*t8.*t12.*t15-a_10_3.*t6.*t8.*t18+a_7_3.*t2.*t3.*t7.*t16.*1.0e1-a_8_3.*t3.*t6.*t7.*t13.*1.0e1)+a_5_3.*t2.*t3.*t17.*2.0e1-a_6_3.*t2.*t3.*t17.*4.0e1+a_7_3.*t2.*t3.*t17.*2.0e1-a_6_3.*t3.*t6.*t9.*t17.*6.0e1+a_7_3.*t3.*t6.*t9.*t17.*1.2e2+a_7_3.*t2.*t7.*t16.*t17.*6.0e1-a_8_3.*t3.*t6.*t9.*t17.*6.0e1-a_8_3.*t2.*t7.*t16.*t17.*1.2e2-a_8_3.*t6.*t7.*t13.*t17.*2.0e1+a_9_3.*t6.*t7.*t13.*t17.*4.0e1-a_10_3.*t6.*t7.*t13.*t17.*2.0e1+a_9_3.*t7.*t15.*t16.*t17.*1.2e1;ddq16+Kd.*(dq16+a_1_4.*t4.*t11.*5.0-a_2_4.*t4.*t11.*5.0+a_5_4.*t8.*t11.*t12.*5.0-a_6_4.*t8.*t11.*t12.*5.0+a_3_4.*t3.*t7.*t11.*t16.*3.0e1-a_4_4.*t3.*t7.*t11.*t16.*3.0e1-a_2_4.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_3_4.*t2.*t3.*t6.*t9.*t11.*2.0e1-a_4_4.*t2.*t6.*t7.*t11.*t13.*2.0e1+a_5_4.*t6.*t7.*t11.*t13.*t15.*4.0)+Kp.*(q16+a_1_4.*t2.*t4-a_2_4.*t4.*t6.*t9.*5.0+a_5_4.*t8.*t12.*t15-a_6_4.*t6.*t8.*t18+a_3_4.*t2.*t3.*t7.*t16.*1.0e1-a_4_4.*t3.*t6.*t7.*t13.*1.0e1)+a_1_4.*t2.*t3.*t17.*2.0e1-a_2_4.*t2.*t3.*t17.*4.0e1+a_3_4.*t2.*t3.*t17.*2.0e1-a_2_4.*t3.*t6.*t9.*t17.*6.0e1+a_3_4.*t3.*t6.*t9.*t17.*1.2e2+a_3_4.*t2.*t7.*t16.*t17.*6.0e1-a_4_4.*t3.*t6.*t9.*t17.*6.0e1-a_4_4.*t2.*t7.*t16.*t17.*1.2e2-a_4_4.*t6.*t7.*t13.*t17.*2.0e1+a_5_4.*t6.*t7.*t13.*t17.*4.0e1-a_6_4.*t6.*t7.*t13.*t17.*2.0e1+a_5_4.*t7.*t15.*t16.*t17.*1.2e1;ddq17+Kd.*(dq17+a_7_4.*t4.*t11.*5.0-a_8_4.*t4.*t11.*5.0+a_1_5.*t8.*t11.*t12.*5.0-a_2_5.*t8.*t11.*t12.*5.0+a_9_4.*t3.*t7.*t11.*t16.*3.0e1-a_10_4.*t3.*t7.*t11.*t16.*3.0e1+a_1_5.*t6.*t7.*t11.*t13.*t15.*4.0-a_8_4.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_9_4.*t2.*t3.*t6.*t9.*t11.*2.0e1-a_10_4.*t2.*t6.*t7.*t11.*t13.*2.0e1)+Kp.*(q17+a_7_4.*t2.*t4+a_1_5.*t8.*t12.*t15-a_2_5.*t6.*t8.*t18-a_8_4.*t4.*t6.*t9.*5.0+a_9_4.*t2.*t3.*t7.*t16.*1.0e1-a_10_4.*t3.*t6.*t7.*t13.*1.0e1)+a_7_4.*t2.*t3.*t17.*2.0e1-a_8_4.*t2.*t3.*t17.*4.0e1+a_9_4.*t2.*t3.*t17.*2.0e1+a_1_5.*t6.*t7.*t13.*t17.*4.0e1-a_2_5.*t6.*t7.*t13.*t17.*2.0e1+a_1_5.*t7.*t15.*t16.*t17.*1.2e1-a_8_4.*t3.*t6.*t9.*t17.*6.0e1+a_9_4.*t3.*t6.*t9.*t17.*1.2e2+a_9_4.*t2.*t7.*t16.*t17.*6.0e1-a_10_4.*t3.*t6.*t9.*t17.*6.0e1-a_10_4.*t2.*t7.*t16.*t17.*1.2e2-a_10_4.*t6.*t7.*t13.*t17.*2.0e1;ddq18+Kd.*(dq18+a_3_5.*t4.*t11.*5.0-a_4_5.*t4.*t11.*5.0+a_7_5.*t8.*t11.*t12.*5.0-a_8_5.*t8.*t11.*t12.*5.0+a_5_5.*t3.*t7.*t11.*t16.*3.0e1-a_6_5.*t3.*t7.*t11.*t16.*3.0e1-a_4_5.*t2.*t3.*t6.*t9.*t11.*2.0e1+a_5_5.*t2.*t3.*t6.*t9.*t11.*2.0e1-a_6_5.*t2.*t6.*t7.*t11.*t13.*2.0e1+a_7_5.*t6.*t7.*t11.*t13.*t15.*4.0)+Kp.*(q18+a_3_5.*t2.*t4-a_4_5.*t4.*t6.*t9.*5.0+a_7_5.*t8.*t12.*t15-a_8_5.*t6.*t8.*t18+a_5_5.*t2.*t3.*t7.*t16.*1.0e1-a_6_5.*t3.*t6.*t7.*t13.*1.0e1)+a_3_5.*t2.*t3.*t17.*2.0e1-a_4_5.*t2.*t3.*t17.*4.0e1+a_5_5.*t2.*t3.*t17.*2.0e1-a_4_5.*t3.*t6.*t9.*t17.*6.0e1+a_5_5.*t3.*t6.*t9.*t17.*1.2e2+a_5_5.*t2.*t7.*t16.*t17.*6.0e1-a_6_5.*t3.*t6.*t9.*t17.*6.0e1-a_6_5.*t2.*t7.*t16.*t17.*1.2e2-a_6_5.*t6.*t7.*t13.*t17.*2.0e1+a_7_5.*t6.*t7.*t13.*t17.*4.0e1-a_8_5.*t6.*t7.*t13.*t17.*2.0e1+a_7_5.*t7.*t15.*t16.*t17.*1.2e1;ddq19+Kd.*(dq19+a_9_5.*t4.*t11.*5.0-a_10_5.*t4.*t11.*5.0+a_3_6.*t8.*t11.*t12.*5.0-a_4_6.*t8.*t11.*t12.*5.0+a_1_6.*t3.*t7.*t11.*t16.*3.0e1-a_2_6.*t3.*t7.*t11.*t16.*3.0e1+a_1_6.*t2.*t3.*t6.*t9.*t11.*2.0e1-a_2_6.*t2.*t6.*t7.*t11.*t13.*2.0e1+a_3_6.*t6.*t7.*t11.*t13.*t15.*4.0-a_10_5.*t2.*t3.*t6.*t9.*t11.*2.0e1)+Kp.*(q19+a_9_5.*t2.*t4+a_3_6.*t8.*t12.*t15-a_4_6.*t6.*t8.*t18-a_10_5.*t4.*t6.*t9.*5.0+a_1_6.*t2.*t3.*t7.*t16.*1.0e1-a_2_6.*t3.*t6.*t7.*t13.*1.0e1)+a_1_6.*t2.*t3.*t17.*2.0e1+a_9_5.*t2.*t3.*t17.*2.0e1-a_10_5.*t2.*t3.*t17.*4.0e1+a_1_6.*t3.*t6.*t9.*t17.*1.2e2+a_1_6.*t2.*t7.*t16.*t17.*6.0e1-a_2_6.*t3.*t6.*t9.*t17.*6.0e1-a_2_6.*t2.*t7.*t16.*t17.*1.2e2-a_2_6.*t6.*t7.*t13.*t17.*2.0e1+a_3_6.*t6.*t7.*t13.*t17.*4.0e1-a_4_6.*t6.*t7.*t13.*t17.*2.0e1+a_3_6.*t7.*t15.*t16.*t17.*1.2e1-a_10_5.*t3.*t6.*t9.*t17.*6.0e1;0.0];
