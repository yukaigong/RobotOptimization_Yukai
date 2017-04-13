function out1 = J_ddy_timeBased_RightStance(in1,in2)
%J_DDY_TIMEBASED_RIGHTSTANCE
%    OUT1 = J_DDY_TIMEBASED_RIGHTSTANCE(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    13-Apr-2017 16:33:03

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
index = in2(:,2);
t5 = N-1.0;
t6 = 1.0./t5;
t7 = index-1.0;
t8 = t6.*t7;
t2 = t8-1.0;
t3 = t2.^2;
t4 = 1.0./T.^2;
t9 = t3.^2;
t10 = t7.^2;
t11 = 1.0./t5.^4;
t12 = t10.^2;
t13 = 1.0./t5.^3;
t14 = 1.0./t5.^2;
t15 = 1.0./T.^3;
t16 = t6.*t7.*5.0;
t17 = t16-5.0;
t18 = 1.0./T;
t19 = t2.*t3.*t4.*2.0e1;
t20 = t2.*t3.*t6.*t7.*t18.*2.0e1;
t21 = t3.*t10.*t14.*t18.*3.0e1;
t22 = Kp.*t2.*t9;
t23 = Kd.*t9.*t18.*5.0;
t24 = t19+t22+t23;
t25 = t9.*t18.*5.0;
t26 = t20+t25;
t36 = t3.*t4.*t6.*t7.*6.0e1;
t47 = t2.*t3.*t4.*4.0e1;
t48 = Kd.*t26;
t49 = Kp.*t6.*t7.*t9.*5.0;
t27 = -t36-t47-t48-t49;
t28 = t20+t21;
t29 = Kd.*t28;
t30 = Kp.*t2.*t3.*t10.*t14.*1.0e1;
t31 = t3.*t4.*t6.*t7.*1.2e2;
t32 = t2.*t4.*t10.*t14.*6.0e1;
t33 = t19+t29+t30+t31+t32;
t34 = t2.*t7.*t10.*t13.*t18.*2.0e1;
t35 = t21+t34;
t37 = t11.*t12.*t18.*5.0;
t38 = t7.*t10.*t13.*t17.*t18.*4.0;
t39 = t37+t38;
t40 = Kd.*t39;
t41 = t4.*t7.*t10.*t13.*4.0e1;
t42 = Kp.*t11.*t12.*t17;
t43 = t4.*t10.*t14.*t17.*1.2e1;
t44 = t40+t41+t42+t43;
t45 = 1.0./t5.^5;
t50 = t4.*t7.*t10.*t13.*2.0e1;
t51 = Kp.*t7.*t12.*t45;
t52 = Kd.*t11.*t12.*t18.*5.0;
t46 = -t50-t51-t52;
t54 = Kd.*t35;
t55 = Kp.*t3.*t7.*t10.*t13.*1.0e1;
t56 = t2.*t4.*t10.*t14.*1.2e2;
t53 = -t36-t50-t54-t55-t56;
out1 = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kp,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kp,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kp,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kp,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kp,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kp,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kp,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kp,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kp,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kd,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kd,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kd,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kd,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kd,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kd,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kd,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kd,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,Kd,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-Kd.*(a_1_1.*t4.*t9.*5.0-a_2_1.*t4.*t9.*5.0+a_5_1.*t4.*t11.*t12.*5.0-a_6_1.*t4.*t11.*t12.*5.0+a_3_1.*t3.*t4.*t10.*t14.*3.0e1-a_4_1.*t3.*t4.*t10.*t14.*3.0e1-a_2_1.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_3_1.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_4_1.*t2.*t4.*t7.*t10.*t13.*2.0e1+a_5_1.*t4.*t7.*t10.*t13.*t17.*4.0)-a_1_1.*t2.*t3.*t15.*4.0e1+a_2_1.*t2.*t3.*t15.*8.0e1-a_3_1.*t2.*t3.*t15.*4.0e1+a_2_1.*t3.*t6.*t7.*t15.*1.2e2-a_3_1.*t3.*t6.*t7.*t15.*2.4e2-a_3_1.*t2.*t10.*t14.*t15.*1.2e2+a_4_1.*t3.*t6.*t7.*t15.*1.2e2+a_4_1.*t2.*t10.*t14.*t15.*2.4e2+a_4_1.*t7.*t10.*t13.*t15.*4.0e1-a_5_1.*t7.*t10.*t13.*t15.*8.0e1+a_6_1.*t7.*t10.*t13.*t15.*4.0e1-a_5_1.*t10.*t14.*t15.*t17.*2.4e1,-Kd.*(a_7_1.*t4.*t9.*5.0-a_8_1.*t4.*t9.*5.0+a_1_2.*t4.*t11.*t12.*5.0-a_2_2.*t4.*t11.*t12.*5.0+a_9_1.*t3.*t4.*t10.*t14.*3.0e1-a_10_1.*t3.*t4.*t10.*t14.*3.0e1+a_1_2.*t4.*t7.*t10.*t13.*t17.*4.0-a_8_1.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_9_1.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_10_1.*t2.*t4.*t7.*t10.*t13.*2.0e1)-a_7_1.*t2.*t3.*t15.*4.0e1+a_8_1.*t2.*t3.*t15.*8.0e1-a_9_1.*t2.*t3.*t15.*4.0e1-a_1_2.*t7.*t10.*t13.*t15.*8.0e1+a_2_2.*t7.*t10.*t13.*t15.*4.0e1-a_1_2.*t10.*t14.*t15.*t17.*2.4e1+a_8_1.*t3.*t6.*t7.*t15.*1.2e2-a_9_1.*t3.*t6.*t7.*t15.*2.4e2-a_9_1.*t2.*t10.*t14.*t15.*1.2e2+a_10_1.*t3.*t6.*t7.*t15.*1.2e2+a_10_1.*t2.*t10.*t14.*t15.*2.4e2+a_10_1.*t7.*t10.*t13.*t15.*4.0e1,-Kd.*(a_3_2.*t4.*t9.*5.0-a_4_2.*t4.*t9.*5.0+a_7_2.*t4.*t11.*t12.*5.0-a_8_2.*t4.*t11.*t12.*5.0+a_5_2.*t3.*t4.*t10.*t14.*3.0e1-a_6_2.*t3.*t4.*t10.*t14.*3.0e1-a_4_2.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_5_2.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_6_2.*t2.*t4.*t7.*t10.*t13.*2.0e1+a_7_2.*t4.*t7.*t10.*t13.*t17.*4.0)-a_3_2.*t2.*t3.*t15.*4.0e1+a_4_2.*t2.*t3.*t15.*8.0e1-a_5_2.*t2.*t3.*t15.*4.0e1+a_4_2.*t3.*t6.*t7.*t15.*1.2e2-a_5_2.*t3.*t6.*t7.*t15.*2.4e2-a_5_2.*t2.*t10.*t14.*t15.*1.2e2+a_6_2.*t3.*t6.*t7.*t15.*1.2e2+a_6_2.*t2.*t10.*t14.*t15.*2.4e2+a_6_2.*t7.*t10.*t13.*t15.*4.0e1-a_7_2.*t7.*t10.*t13.*t15.*8.0e1+a_8_2.*t7.*t10.*t13.*t15.*4.0e1-a_7_2.*t10.*t14.*t15.*t17.*2.4e1,-Kd.*(a_9_2.*t4.*t9.*5.0-a_10_2.*t4.*t9.*5.0+a_3_3.*t4.*t11.*t12.*5.0-a_4_3.*t4.*t11.*t12.*5.0+a_1_3.*t3.*t4.*t10.*t14.*3.0e1-a_2_3.*t3.*t4.*t10.*t14.*3.0e1+a_1_3.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_2_3.*t2.*t4.*t7.*t10.*t13.*2.0e1+a_3_3.*t4.*t7.*t10.*t13.*t17.*4.0-a_10_2.*t2.*t3.*t4.*t6.*t7.*2.0e1)-a_1_3.*t2.*t3.*t15.*4.0e1-a_9_2.*t2.*t3.*t15.*4.0e1+a_10_2.*t2.*t3.*t15.*8.0e1-a_1_3.*t3.*t6.*t7.*t15.*2.4e2-a_1_3.*t2.*t10.*t14.*t15.*1.2e2+a_2_3.*t3.*t6.*t7.*t15.*1.2e2+a_2_3.*t2.*t10.*t14.*t15.*2.4e2+a_2_3.*t7.*t10.*t13.*t15.*4.0e1-a_3_3.*t7.*t10.*t13.*t15.*8.0e1+a_4_3.*t7.*t10.*t13.*t15.*4.0e1-a_3_3.*t10.*t14.*t15.*t17.*2.4e1+a_10_2.*t3.*t6.*t7.*t15.*1.2e2,-Kd.*(a_5_3.*t4.*t9.*5.0-a_6_3.*t4.*t9.*5.0+a_9_3.*t4.*t11.*t12.*5.0-a_10_3.*t4.*t11.*t12.*5.0+a_7_3.*t3.*t4.*t10.*t14.*3.0e1-a_8_3.*t3.*t4.*t10.*t14.*3.0e1-a_6_3.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_7_3.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_8_3.*t2.*t4.*t7.*t10.*t13.*2.0e1+a_9_3.*t4.*t7.*t10.*t13.*t17.*4.0)-a_5_3.*t2.*t3.*t15.*4.0e1+a_6_3.*t2.*t3.*t15.*8.0e1-a_7_3.*t2.*t3.*t15.*4.0e1+a_6_3.*t3.*t6.*t7.*t15.*1.2e2-a_7_3.*t3.*t6.*t7.*t15.*2.4e2-a_7_3.*t2.*t10.*t14.*t15.*1.2e2+a_8_3.*t3.*t6.*t7.*t15.*1.2e2+a_8_3.*t2.*t10.*t14.*t15.*2.4e2+a_8_3.*t7.*t10.*t13.*t15.*4.0e1-a_9_3.*t7.*t10.*t13.*t15.*8.0e1+a_10_3.*t7.*t10.*t13.*t15.*4.0e1-a_9_3.*t10.*t14.*t15.*t17.*2.4e1,-Kd.*(a_1_4.*t4.*t9.*5.0-a_2_4.*t4.*t9.*5.0+a_5_4.*t4.*t11.*t12.*5.0-a_6_4.*t4.*t11.*t12.*5.0+a_3_4.*t3.*t4.*t10.*t14.*3.0e1-a_4_4.*t3.*t4.*t10.*t14.*3.0e1-a_2_4.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_3_4.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_4_4.*t2.*t4.*t7.*t10.*t13.*2.0e1+a_5_4.*t4.*t7.*t10.*t13.*t17.*4.0)-a_1_4.*t2.*t3.*t15.*4.0e1+a_2_4.*t2.*t3.*t15.*8.0e1-a_3_4.*t2.*t3.*t15.*4.0e1+a_2_4.*t3.*t6.*t7.*t15.*1.2e2-a_3_4.*t3.*t6.*t7.*t15.*2.4e2-a_3_4.*t2.*t10.*t14.*t15.*1.2e2+a_4_4.*t3.*t6.*t7.*t15.*1.2e2+a_4_4.*t2.*t10.*t14.*t15.*2.4e2+a_4_4.*t7.*t10.*t13.*t15.*4.0e1-a_5_4.*t7.*t10.*t13.*t15.*8.0e1+a_6_4.*t7.*t10.*t13.*t15.*4.0e1-a_5_4.*t10.*t14.*t15.*t17.*2.4e1,-Kd.*(a_7_4.*t4.*t9.*5.0-a_8_4.*t4.*t9.*5.0+a_1_5.*t4.*t11.*t12.*5.0-a_2_5.*t4.*t11.*t12.*5.0+a_9_4.*t3.*t4.*t10.*t14.*3.0e1-a_10_4.*t3.*t4.*t10.*t14.*3.0e1+a_1_5.*t4.*t7.*t10.*t13.*t17.*4.0-a_8_4.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_9_4.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_10_4.*t2.*t4.*t7.*t10.*t13.*2.0e1)-a_7_4.*t2.*t3.*t15.*4.0e1+a_8_4.*t2.*t3.*t15.*8.0e1-a_9_4.*t2.*t3.*t15.*4.0e1-a_1_5.*t7.*t10.*t13.*t15.*8.0e1+a_2_5.*t7.*t10.*t13.*t15.*4.0e1-a_1_5.*t10.*t14.*t15.*t17.*2.4e1+a_8_4.*t3.*t6.*t7.*t15.*1.2e2-a_9_4.*t3.*t6.*t7.*t15.*2.4e2-a_9_4.*t2.*t10.*t14.*t15.*1.2e2+a_10_4.*t3.*t6.*t7.*t15.*1.2e2+a_10_4.*t2.*t10.*t14.*t15.*2.4e2+a_10_4.*t7.*t10.*t13.*t15.*4.0e1,-Kd.*(a_3_5.*t4.*t9.*5.0-a_4_5.*t4.*t9.*5.0+a_7_5.*t4.*t11.*t12.*5.0-a_8_5.*t4.*t11.*t12.*5.0+a_5_5.*t3.*t4.*t10.*t14.*3.0e1-a_6_5.*t3.*t4.*t10.*t14.*3.0e1-a_4_5.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_5_5.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_6_5.*t2.*t4.*t7.*t10.*t13.*2.0e1+a_7_5.*t4.*t7.*t10.*t13.*t17.*4.0)-a_3_5.*t2.*t3.*t15.*4.0e1+a_4_5.*t2.*t3.*t15.*8.0e1-a_5_5.*t2.*t3.*t15.*4.0e1+a_4_5.*t3.*t6.*t7.*t15.*1.2e2-a_5_5.*t3.*t6.*t7.*t15.*2.4e2-a_5_5.*t2.*t10.*t14.*t15.*1.2e2+a_6_5.*t3.*t6.*t7.*t15.*1.2e2+a_6_5.*t2.*t10.*t14.*t15.*2.4e2+a_6_5.*t7.*t10.*t13.*t15.*4.0e1-a_7_5.*t7.*t10.*t13.*t15.*8.0e1+a_8_5.*t7.*t10.*t13.*t15.*4.0e1-a_7_5.*t10.*t14.*t15.*t17.*2.4e1,-Kd.*(a_9_5.*t4.*t9.*5.0-a_10_5.*t4.*t9.*5.0+a_3_6.*t4.*t11.*t12.*5.0-a_4_6.*t4.*t11.*t12.*5.0+a_1_6.*t3.*t4.*t10.*t14.*3.0e1-a_2_6.*t3.*t4.*t10.*t14.*3.0e1+a_1_6.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_2_6.*t2.*t4.*t7.*t10.*t13.*2.0e1+a_3_6.*t4.*t7.*t10.*t13.*t17.*4.0-a_10_5.*t2.*t3.*t4.*t6.*t7.*2.0e1)-a_1_6.*t2.*t3.*t15.*4.0e1-a_9_5.*t2.*t3.*t15.*4.0e1+a_10_5.*t2.*t3.*t15.*8.0e1-a_1_6.*t3.*t6.*t7.*t15.*2.4e2-a_1_6.*t2.*t10.*t14.*t15.*1.2e2+a_2_6.*t3.*t6.*t7.*t15.*1.2e2+a_2_6.*t2.*t10.*t14.*t15.*2.4e2+a_2_6.*t7.*t10.*t13.*t15.*4.0e1-a_3_6.*t7.*t10.*t13.*t15.*8.0e1+a_4_6.*t7.*t10.*t13.*t15.*4.0e1-a_3_6.*t10.*t14.*t15.*t17.*2.4e1+a_10_5.*t3.*t6.*t7.*t15.*1.2e2,0.0,t24,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t27,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-Kd.*t35-t3.*t4.*t6.*t7.*6.0e1-t2.*t4.*t10.*t14.*1.2e2-t4.*t7.*t10.*t13.*2.0e1-Kp.*t3.*t7.*t10.*t13.*1.0e1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t44,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t46,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t27,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t36-Kd.*t35-t2.*t4.*t10.*t14.*1.2e2-t4.*t7.*t10.*t13.*2.0e1-Kp.*t3.*t7.*t10.*t13.*1.0e1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t44,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t46,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t27,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t53,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t44,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t46,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t27,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t53,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t44,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t46,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t27,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t53,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t44,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t46,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t27,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t53,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t44,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t46,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t27,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t53,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t44,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t46,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t27,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t53,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t44,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t46,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t24,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t27,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t33,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t53,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t44,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t46,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[10,127]);
