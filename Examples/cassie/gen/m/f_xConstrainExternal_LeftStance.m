function out1 = f_xConstrainExternal_LeftStance(in1,in2)
%F_XCONSTRAINEXTERNAL_LEFTSTANCE
%    OUT1 = F_XCONSTRAINEXTERNAL_LEFTSTANCE(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    01-Apr-2017 10:00:41

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
s1 = in2(:,1);
s2 = in2(:,2);
s3 = in2(:,3);
s4 = in2(:,4);
s5 = in2(:,5);
s6 = in2(:,6);
s7 = in2(:,7);
s8 = in2(:,8);
s9 = in2(:,9);
s10 = in2(:,10);
s11 = in2(:,11);
s12 = in2(:,12);
s13 = in2(:,13);
s14 = in2(:,14);
s15 = in2(:,15);
s16 = in2(:,16);
s17 = in2(:,17);
s18 = in2(:,18);
s19 = in2(:,19);
s20 = in2(:,20);
s21 = in2(:,21);
s22 = in2(:,22);
s23 = in2(:,23);
s24 = in2(:,24);
s25 = in2(:,25);
s26 = in2(:,26);
s27 = in2(:,27);
s28 = in2(:,28);
s29 = in2(:,29);
s30 = in2(:,30);
s31 = in2(:,31);
s32 = in2(:,32);
s33 = in2(:,33);
s34 = in2(:,34);
s35 = in2(:,35);
s36 = in2(:,36);
s37 = in2(:,37);
s38 = in2(:,38);
s39 = in2(:,39);
s40 = in2(:,40);
s41 = in2(:,41);
s42 = in2(:,42);
s43 = in2(:,43);
s44 = in2(:,44);
out1 = [s1.*(q1_1-q2_1);s2.*(q1_2-q2_2);s3.*(q1_3-q2_3);s4.*(q1_4-q2_4);s5.*(q1_5-q2_5);s6.*(q1_6-q2_6);s7.*(q1_7-q2_7);s8.*(q1_8-q2_8);s9.*(q1_9-q2_9);s10.*(q1_10-q2_10);s11.*(q1_11-q2_11);s12.*(q1_12-q2_12);s13.*(q1_13-q2_13);s14.*(q1_14-q2_14);s15.*(q1_15-q2_15);s16.*(q1_16-q2_16);s17.*(q1_17-q2_17);s18.*(q1_18-q2_18);s19.*(q1_19-q2_19);s20.*(q1_20-q2_20);s21.*(q1_21-q2_21);s22.*(q1_22-q2_22);s23.*(dq1_1-dq2_1);s24.*(dq1_2-dq2_2);s25.*(dq1_3-dq2_3);s26.*(dq1_4-dq2_4);s27.*(dq1_5-dq2_5);s28.*(dq1_6-dq2_6);s29.*(dq1_7-dq2_7);s30.*(dq1_8-dq2_8);s31.*(dq1_9-dq2_9);s32.*(dq1_10-dq2_10);s33.*(dq1_11-dq2_11);s34.*(dq1_12-dq2_12);s35.*(dq1_13-dq2_13);s36.*(dq1_14-dq2_14);s37.*(dq1_15-dq2_15);s38.*(dq1_16-dq2_16);s39.*(dq1_17-dq2_17);s40.*(dq1_18-dq2_18);s41.*(dq1_19-dq2_19);s42.*(dq1_20-dq2_20);s43.*(dq1_21-dq2_21);s44.*(dq1_22-dq2_22)];
