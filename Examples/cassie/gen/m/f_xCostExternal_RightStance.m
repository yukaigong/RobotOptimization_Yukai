function out1 = f_xCostExternal_RightStance(in1,in2)
%F_XCOSTEXTERNAL_RIGHTSTANCE
%    OUT1 = F_XCOSTEXTERNAL_RIGHTSTANCE(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    01-Apr-2017 10:00:51

dq1_1 = in1(:,23);
dq1_2 = in1(:,24);
dq1_3 = in1(:,25);
dq1_4 = in1(:,26);
dq1_5 = in1(:,27);
dq1_6 = in1(:,28);
dq1_7 = in1(:,29);
dq1_8 = in1(:,30);
dq1_9 = in1(:,31);
dq2_1 = in2(:,67);
dq2_2 = in2(:,68);
dq2_3 = in2(:,69);
dq2_4 = in2(:,70);
dq2_5 = in2(:,71);
dq2_6 = in2(:,72);
dq2_7 = in2(:,73);
dq2_8 = in2(:,74);
dq2_9 = in2(:,75);
dq1_10 = in1(:,32);
dq1_11 = in1(:,33);
dq1_12 = in1(:,34);
dq1_13 = in1(:,35);
dq1_14 = in1(:,36);
dq1_15 = in1(:,37);
dq1_16 = in1(:,38);
dq1_17 = in1(:,39);
dq1_18 = in1(:,40);
dq1_19 = in1(:,41);
dq1_20 = in1(:,42);
dq1_21 = in1(:,43);
dq1_22 = in1(:,44);
dq2_10 = in2(:,76);
dq2_11 = in2(:,77);
dq2_12 = in2(:,78);
dq2_13 = in2(:,79);
dq2_14 = in2(:,80);
dq2_15 = in2(:,81);
dq2_16 = in2(:,82);
dq2_17 = in2(:,83);
dq2_18 = in2(:,84);
dq2_19 = in2(:,85);
dq2_20 = in2(:,86);
dq2_21 = in2(:,87);
dq2_22 = in2(:,88);
q1_1 = in1(:,1);
q1_2 = in1(:,2);
q1_3 = in1(:,3);
q1_4 = in1(:,4);
q1_5 = in1(:,5);
q1_6 = in1(:,6);
q1_7 = in1(:,7);
q1_8 = in1(:,8);
q1_9 = in1(:,9);
q2_1 = in2(:,45);
q2_2 = in2(:,46);
q2_3 = in2(:,47);
q2_4 = in2(:,48);
q2_5 = in2(:,49);
q2_6 = in2(:,50);
q2_7 = in2(:,51);
q2_8 = in2(:,52);
q2_9 = in2(:,53);
q1_10 = in1(:,10);
q1_11 = in1(:,11);
q1_12 = in1(:,12);
q1_13 = in1(:,13);
q1_14 = in1(:,14);
q1_15 = in1(:,15);
q1_16 = in1(:,16);
q1_17 = in1(:,17);
q1_18 = in1(:,18);
q1_19 = in1(:,19);
q1_20 = in1(:,20);
q1_21 = in1(:,21);
q1_22 = in1(:,22);
q2_10 = in2(:,54);
q2_11 = in2(:,55);
q2_12 = in2(:,56);
q2_13 = in2(:,57);
q2_14 = in2(:,58);
q2_15 = in2(:,59);
q2_16 = in2(:,60);
q2_17 = in2(:,61);
q2_18 = in2(:,62);
q2_19 = in2(:,63);
q2_20 = in2(:,64);
q2_21 = in2(:,65);
q2_22 = in2(:,66);
w1 = in2(:,1);
w2 = in2(:,2);
w3 = in2(:,3);
w4 = in2(:,4);
w5 = in2(:,5);
w6 = in2(:,6);
w7 = in2(:,7);
w8 = in2(:,8);
w9 = in2(:,9);
w10 = in2(:,10);
w11 = in2(:,11);
w12 = in2(:,12);
w13 = in2(:,13);
w14 = in2(:,14);
w15 = in2(:,15);
w16 = in2(:,16);
w17 = in2(:,17);
w18 = in2(:,18);
w19 = in2(:,19);
w20 = in2(:,20);
w21 = in2(:,21);
w22 = in2(:,22);
w23 = in2(:,23);
w24 = in2(:,24);
w25 = in2(:,25);
w26 = in2(:,26);
w27 = in2(:,27);
w28 = in2(:,28);
w29 = in2(:,29);
w30 = in2(:,30);
w31 = in2(:,31);
w32 = in2(:,32);
w33 = in2(:,33);
w34 = in2(:,34);
w35 = in2(:,35);
w36 = in2(:,36);
w37 = in2(:,37);
w38 = in2(:,38);
w39 = in2(:,39);
w40 = in2(:,40);
w41 = in2(:,41);
w42 = in2(:,42);
w43 = in2(:,43);
w44 = in2(:,44);
t2 = dq1_1-dq2_1;
t3 = dq1_2-dq2_2;
t4 = dq1_3-dq2_3;
t5 = dq1_4-dq2_4;
t6 = dq1_5-dq2_5;
t7 = dq1_6-dq2_6;
t8 = dq1_7-dq2_7;
t9 = dq1_8-dq2_8;
t10 = dq1_9-dq2_9;
t11 = dq1_10-dq2_10;
t12 = dq1_11-dq2_11;
t13 = dq1_12-dq2_12;
t14 = dq1_13-dq2_13;
t15 = dq1_14-dq2_14;
t16 = dq1_15-dq2_15;
t17 = dq1_16-dq2_16;
t18 = dq1_17-dq2_17;
t19 = dq1_18-dq2_18;
t20 = dq1_19-dq2_19;
t21 = dq1_20-dq2_20;
t22 = dq1_21-dq2_21;
t23 = dq1_22-dq2_22;
t24 = q1_1-q2_1;
t25 = q1_2-q2_2;
t26 = q1_3-q2_3;
t27 = q1_4-q2_4;
t28 = q1_5-q2_5;
t29 = q1_6-q2_6;
t30 = q1_7-q2_7;
t31 = q1_8-q2_8;
t32 = q1_9-q2_9;
t33 = q1_10-q2_10;
t34 = q1_11-q2_11;
t35 = q1_12-q2_12;
t36 = q1_13-q2_13;
t37 = q1_14-q2_14;
t38 = q1_15-q2_15;
t39 = q1_16-q2_16;
t40 = q1_17-q2_17;
t41 = q1_18-q2_18;
t42 = q1_19-q2_19;
t43 = q1_20-q2_20;
t44 = q1_21-q2_21;
t45 = q1_22-q2_22;
out1 = t2.^2.*w23+t24.^2.*w1+t3.^2.*w24+t25.^2.*w2+t4.^2.*w25+t26.^2.*w3+t5.^2.*w26+t27.^2.*w4+t6.^2.*w27+t28.^2.*w5+t7.^2.*w28+t29.^2.*w6+t8.^2.*w29+t30.^2.*w7+t9.^2.*w30+t31.^2.*w8+t10.^2.*w31+t32.^2.*w9+t11.^2.*w32+t33.^2.*w10+t12.^2.*w33+t34.^2.*w11+t13.^2.*w34+t35.^2.*w12+t14.^2.*w35+t36.^2.*w13+t15.^2.*w36+t37.^2.*w14+t16.^2.*w37+t38.^2.*w15+t17.^2.*w38+t39.^2.*w16+t18.^2.*w39+t40.^2.*w17+t19.^2.*w40+t41.^2.*w18+t20.^2.*w41+t42.^2.*w19+t21.^2.*w42+t43.^2.*w20+t22.^2.*w43+t44.^2.*w21+t23.^2.*w44+t45.^2.*w22;