function out1 = J_dy_timeBased_RightStance(in1,in2)
%J_DY_TIMEBASED_RIGHTSTANCE
%    OUT1 = J_DY_TIMEBASED_RIGHTSTANCE(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    13-Apr-2017 16:32:45

N = in2(:,1);
T = in1(:,45);
a_1_1 = in1(:,46);
a_1_2 = in1(:,56);
a_1_3 = in1(:,66);
a_1_4 = in1(:,76);
a_1_5 = in1(:,86);
a_1_6 = in1(:,96);
a_2_1 = in1(:,47);
a_2_2 = in1(:,57);
a_2_3 = in1(:,67);
a_2_4 = in1(:,77);
a_2_5 = in1(:,87);
a_2_6 = in1(:,97);
a_3_1 = in1(:,48);
a_3_2 = in1(:,58);
a_3_3 = in1(:,68);
a_3_4 = in1(:,78);
a_3_5 = in1(:,88);
a_3_6 = in1(:,98);
a_4_1 = in1(:,49);
a_4_2 = in1(:,59);
a_4_3 = in1(:,69);
a_4_4 = in1(:,79);
a_4_5 = in1(:,89);
a_4_6 = in1(:,99);
a_5_1 = in1(:,50);
a_5_2 = in1(:,60);
a_5_3 = in1(:,70);
a_5_4 = in1(:,80);
a_5_5 = in1(:,90);
a_6_1 = in1(:,51);
a_6_2 = in1(:,61);
a_6_3 = in1(:,71);
a_6_4 = in1(:,81);
a_6_5 = in1(:,91);
a_7_1 = in1(:,52);
a_7_2 = in1(:,62);
a_7_3 = in1(:,72);
a_7_4 = in1(:,82);
a_7_5 = in1(:,92);
a_8_1 = in1(:,53);
a_8_2 = in1(:,63);
a_8_3 = in1(:,73);
a_8_4 = in1(:,83);
a_8_5 = in1(:,93);
a_9_1 = in1(:,54);
a_9_2 = in1(:,64);
a_9_3 = in1(:,74);
a_9_4 = in1(:,84);
a_9_5 = in1(:,94);
a_10_1 = in1(:,55);
a_10_2 = in1(:,65);
a_10_3 = in1(:,75);
a_10_4 = in1(:,85);
a_10_5 = in1(:,95);
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
t15 = 1.0./T;
t16 = t9.*t15.*5.0;
t17 = t3.*t10.*t14.*t15.*3.0e1;
t18 = t6.*t7.*5.0;
t19 = t18-5.0;
t20 = t11.*t12.*t15.*5.0;
t21 = t2.*t3.*t6.*t7.*t15.*2.0e1;
t22 = t17+t21;
t27 = t2.*t7.*t10.*t13.*t15.*2.0e1;
t23 = -t17-t27;
t24 = t7.*t10.*t13.*t15.*t19.*4.0;
t25 = t20+t24;
t26 = -t16-t21;
out1 = reshape([0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,a_1_1.*t4.*t9.*-5.0+a_2_1.*t4.*t9.*5.0-a_5_1.*t4.*t11.*t12.*5.0+a_6_1.*t4.*t11.*t12.*5.0-a_3_1.*t3.*t4.*t10.*t14.*3.0e1+a_4_1.*t3.*t4.*t10.*t14.*3.0e1+a_2_1.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_3_1.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_4_1.*t2.*t4.*t7.*t10.*t13.*2.0e1-a_5_1.*t4.*t7.*t10.*t13.*t19.*4.0,a_7_1.*t4.*t9.*-5.0+a_8_1.*t4.*t9.*5.0-a_1_2.*t4.*t11.*t12.*5.0+a_2_2.*t4.*t11.*t12.*5.0-a_9_1.*t3.*t4.*t10.*t14.*3.0e1+a_10_1.*t3.*t4.*t10.*t14.*3.0e1-a_1_2.*t4.*t7.*t10.*t13.*t19.*4.0+a_8_1.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_9_1.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_10_1.*t2.*t4.*t7.*t10.*t13.*2.0e1,a_3_2.*t4.*t9.*-5.0+a_4_2.*t4.*t9.*5.0-a_7_2.*t4.*t11.*t12.*5.0+a_8_2.*t4.*t11.*t12.*5.0-a_5_2.*t3.*t4.*t10.*t14.*3.0e1+a_6_2.*t3.*t4.*t10.*t14.*3.0e1+a_4_2.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_5_2.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_6_2.*t2.*t4.*t7.*t10.*t13.*2.0e1-a_7_2.*t4.*t7.*t10.*t13.*t19.*4.0,a_9_2.*t4.*t9.*-5.0+a_10_2.*t4.*t9.*5.0-a_3_3.*t4.*t11.*t12.*5.0+a_4_3.*t4.*t11.*t12.*5.0-a_1_3.*t3.*t4.*t10.*t14.*3.0e1+a_2_3.*t3.*t4.*t10.*t14.*3.0e1-a_1_3.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_2_3.*t2.*t4.*t7.*t10.*t13.*2.0e1-a_3_3.*t4.*t7.*t10.*t13.*t19.*4.0+a_10_2.*t2.*t3.*t4.*t6.*t7.*2.0e1,a_5_3.*t4.*t9.*-5.0+a_6_3.*t4.*t9.*5.0-a_9_3.*t4.*t11.*t12.*5.0+a_10_3.*t4.*t11.*t12.*5.0-a_7_3.*t3.*t4.*t10.*t14.*3.0e1+a_8_3.*t3.*t4.*t10.*t14.*3.0e1+a_6_3.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_7_3.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_8_3.*t2.*t4.*t7.*t10.*t13.*2.0e1-a_9_3.*t4.*t7.*t10.*t13.*t19.*4.0,a_1_4.*t4.*t9.*-5.0+a_2_4.*t4.*t9.*5.0-a_5_4.*t4.*t11.*t12.*5.0+a_6_4.*t4.*t11.*t12.*5.0-a_3_4.*t3.*t4.*t10.*t14.*3.0e1+a_4_4.*t3.*t4.*t10.*t14.*3.0e1+a_2_4.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_3_4.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_4_4.*t2.*t4.*t7.*t10.*t13.*2.0e1-a_5_4.*t4.*t7.*t10.*t13.*t19.*4.0,a_7_4.*t4.*t9.*-5.0+a_8_4.*t4.*t9.*5.0-a_1_5.*t4.*t11.*t12.*5.0+a_2_5.*t4.*t11.*t12.*5.0-a_9_4.*t3.*t4.*t10.*t14.*3.0e1+a_10_4.*t3.*t4.*t10.*t14.*3.0e1-a_1_5.*t4.*t7.*t10.*t13.*t19.*4.0+a_8_4.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_9_4.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_10_4.*t2.*t4.*t7.*t10.*t13.*2.0e1,a_3_5.*t4.*t9.*-5.0+a_4_5.*t4.*t9.*5.0-a_7_5.*t4.*t11.*t12.*5.0+a_8_5.*t4.*t11.*t12.*5.0-a_5_5.*t3.*t4.*t10.*t14.*3.0e1+a_6_5.*t3.*t4.*t10.*t14.*3.0e1+a_4_5.*t2.*t3.*t4.*t6.*t7.*2.0e1-a_5_5.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_6_5.*t2.*t4.*t7.*t10.*t13.*2.0e1-a_7_5.*t4.*t7.*t10.*t13.*t19.*4.0,a_9_5.*t4.*t9.*-5.0+a_10_5.*t4.*t9.*5.0-a_3_6.*t4.*t11.*t12.*5.0+a_4_6.*t4.*t11.*t12.*5.0-a_1_6.*t3.*t4.*t10.*t14.*3.0e1+a_2_6.*t3.*t4.*t10.*t14.*3.0e1-a_1_6.*t2.*t3.*t4.*t6.*t7.*2.0e1+a_2_6.*t2.*t4.*t7.*t10.*t13.*2.0e1-a_3_6.*t4.*t7.*t10.*t13.*t19.*4.0+a_10_5.*t2.*t3.*t4.*t6.*t7.*2.0e1,0.0,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t16-t2.*t3.*t6.*t7.*t15.*2.0e1,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t22,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t23,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t25,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t20,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t26,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t22,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t23,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t25,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t20,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t26,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t22,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t23,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t25,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t20,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t26,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t22,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t23,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t25,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t20,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t26,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t22,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t23,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t25,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t20,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t26,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t22,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t23,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t25,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t20,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t26,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t22,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t23,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t25,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t20,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t26,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t22,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t23,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t25,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t20,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t16,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t26,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t22,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t23,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,t25,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-t20,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0],[10,105]);
