function out1 = f_midPointPos_RightStance(in1,N)
%F_MIDPOINTPOS_RIGHTSTANCE
%    OUT1 = F_MIDPOINTPOS_RIGHTSTANCE(IN1,N)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    01-Apr-2017 09:53:39

T = in1(:,1);
dq1_1 = in1(:,24);
dq1_2 = in1(:,25);
dq1_3 = in1(:,26);
dq1_4 = in1(:,27);
dq1_5 = in1(:,28);
dq1_6 = in1(:,29);
dq1_7 = in1(:,30);
dq1_8 = in1(:,31);
dq1_9 = in1(:,32);
dq3_1 = in1(:,90);
dq3_2 = in1(:,91);
dq3_3 = in1(:,92);
dq3_4 = in1(:,93);
dq3_5 = in1(:,94);
dq3_6 = in1(:,95);
dq3_7 = in1(:,96);
dq3_8 = in1(:,97);
dq3_9 = in1(:,98);
dq1_10 = in1(:,33);
dq1_11 = in1(:,34);
dq1_12 = in1(:,35);
dq1_13 = in1(:,36);
dq1_14 = in1(:,37);
dq1_15 = in1(:,38);
dq1_16 = in1(:,39);
dq1_17 = in1(:,40);
dq1_18 = in1(:,41);
dq1_19 = in1(:,42);
dq1_20 = in1(:,43);
dq1_21 = in1(:,44);
dq1_22 = in1(:,45);
dq3_10 = in1(:,99);
dq3_11 = in1(:,100);
dq3_12 = in1(:,101);
dq3_13 = in1(:,102);
dq3_14 = in1(:,103);
dq3_15 = in1(:,104);
dq3_16 = in1(:,105);
dq3_17 = in1(:,106);
dq3_18 = in1(:,107);
dq3_19 = in1(:,108);
dq3_20 = in1(:,109);
dq3_21 = in1(:,110);
dq3_22 = in1(:,111);
q1_1 = in1(:,2);
q1_2 = in1(:,3);
q1_3 = in1(:,4);
q1_4 = in1(:,5);
q1_5 = in1(:,6);
q1_6 = in1(:,7);
q1_7 = in1(:,8);
q1_8 = in1(:,9);
q1_9 = in1(:,10);
q2_1 = in1(:,46);
q2_2 = in1(:,47);
q2_3 = in1(:,48);
q2_4 = in1(:,49);
q2_5 = in1(:,50);
q2_6 = in1(:,51);
q2_7 = in1(:,52);
q2_8 = in1(:,53);
q2_9 = in1(:,54);
q3_1 = in1(:,68);
q3_2 = in1(:,69);
q3_3 = in1(:,70);
q3_4 = in1(:,71);
q3_5 = in1(:,72);
q3_6 = in1(:,73);
q3_7 = in1(:,74);
q3_8 = in1(:,75);
q3_9 = in1(:,76);
q1_10 = in1(:,11);
q1_11 = in1(:,12);
q1_12 = in1(:,13);
q1_13 = in1(:,14);
q1_14 = in1(:,15);
q1_15 = in1(:,16);
q1_16 = in1(:,17);
q1_17 = in1(:,18);
q1_18 = in1(:,19);
q1_19 = in1(:,20);
q1_20 = in1(:,21);
q1_21 = in1(:,22);
q1_22 = in1(:,23);
q2_10 = in1(:,55);
q2_11 = in1(:,56);
q2_12 = in1(:,57);
q2_13 = in1(:,58);
q2_14 = in1(:,59);
q2_15 = in1(:,60);
q2_16 = in1(:,61);
q2_17 = in1(:,62);
q2_18 = in1(:,63);
q2_19 = in1(:,64);
q2_20 = in1(:,65);
q2_21 = in1(:,66);
q2_22 = in1(:,67);
q3_10 = in1(:,77);
q3_11 = in1(:,78);
q3_12 = in1(:,79);
q3_13 = in1(:,80);
q3_14 = in1(:,81);
q3_15 = in1(:,82);
q3_16 = in1(:,83);
q3_17 = in1(:,84);
q3_18 = in1(:,85);
q3_19 = in1(:,86);
q3_20 = in1(:,87);
q3_21 = in1(:,88);
q3_22 = in1(:,89);
t2 = N-1.0;
t3 = 1.0./t2;
out1 = [q1_1.*(-1.0./2.0)+q2_1-q3_1.*(1.0./2.0)-T.*t3.*(dq1_1-dq3_1).*(1.0./8.0);q1_2.*(-1.0./2.0)+q2_2-q3_2.*(1.0./2.0)-T.*t3.*(dq1_2-dq3_2).*(1.0./8.0);q1_3.*(-1.0./2.0)+q2_3-q3_3.*(1.0./2.0)-T.*t3.*(dq1_3-dq3_3).*(1.0./8.0);q1_4.*(-1.0./2.0)+q2_4-q3_4.*(1.0./2.0)-T.*t3.*(dq1_4-dq3_4).*(1.0./8.0);q1_5.*(-1.0./2.0)+q2_5-q3_5.*(1.0./2.0)-T.*t3.*(dq1_5-dq3_5).*(1.0./8.0);q1_6.*(-1.0./2.0)+q2_6-q3_6.*(1.0./2.0)-T.*t3.*(dq1_6-dq3_6).*(1.0./8.0);q1_7.*(-1.0./2.0)+q2_7-q3_7.*(1.0./2.0)-T.*t3.*(dq1_7-dq3_7).*(1.0./8.0);q1_8.*(-1.0./2.0)+q2_8-q3_8.*(1.0./2.0)-T.*t3.*(dq1_8-dq3_8).*(1.0./8.0);q1_9.*(-1.0./2.0)+q2_9-q3_9.*(1.0./2.0)-T.*t3.*(dq1_9-dq3_9).*(1.0./8.0);q1_10.*(-1.0./2.0)+q2_10-q3_10.*(1.0./2.0)-T.*t3.*(dq1_10-dq3_10).*(1.0./8.0);q1_11.*(-1.0./2.0)+q2_11-q3_11.*(1.0./2.0)-T.*t3.*(dq1_11-dq3_11).*(1.0./8.0);q1_12.*(-1.0./2.0)+q2_12-q3_12.*(1.0./2.0)-T.*t3.*(dq1_12-dq3_12).*(1.0./8.0);q1_13.*(-1.0./2.0)+q2_13-q3_13.*(1.0./2.0)-T.*t3.*(dq1_13-dq3_13).*(1.0./8.0);q1_14.*(-1.0./2.0)+q2_14-q3_14.*(1.0./2.0)-T.*t3.*(dq1_14-dq3_14).*(1.0./8.0);q1_15.*(-1.0./2.0)+q2_15-q3_15.*(1.0./2.0)-T.*t3.*(dq1_15-dq3_15).*(1.0./8.0);q1_16.*(-1.0./2.0)+q2_16-q3_16.*(1.0./2.0)-T.*t3.*(dq1_16-dq3_16).*(1.0./8.0);q1_17.*(-1.0./2.0)+q2_17-q3_17.*(1.0./2.0)-T.*t3.*(dq1_17-dq3_17).*(1.0./8.0);q1_18.*(-1.0./2.0)+q2_18-q3_18.*(1.0./2.0)-T.*t3.*(dq1_18-dq3_18).*(1.0./8.0);q1_19.*(-1.0./2.0)+q2_19-q3_19.*(1.0./2.0)-T.*t3.*(dq1_19-dq3_19).*(1.0./8.0);q1_20.*(-1.0./2.0)+q2_20-q3_20.*(1.0./2.0)-T.*t3.*(dq1_20-dq3_20).*(1.0./8.0);q1_21.*(-1.0./2.0)+q2_21-q3_21.*(1.0./2.0)-T.*t3.*(dq1_21-dq3_21).*(1.0./8.0);q1_22.*(-1.0./2.0)+q2_22-q3_22.*(1.0./2.0)-T.*t3.*(dq1_22-dq3_22).*(1.0./8.0)];
