function out1 = f_midPointVel_RightStance(in1,N)
%F_MIDPOINTVEL_RIGHTSTANCE
%    OUT1 = F_MIDPOINTVEL_RIGHTSTANCE(IN1,N)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    13-Apr-2017 16:29:27

T = in1(:,1);
ddq1_1 = in1(:,24);
ddq1_2 = in1(:,25);
ddq1_3 = in1(:,26);
ddq1_4 = in1(:,27);
ddq1_5 = in1(:,28);
ddq1_6 = in1(:,29);
ddq1_7 = in1(:,30);
ddq1_8 = in1(:,31);
ddq1_9 = in1(:,32);
ddq3_1 = in1(:,90);
ddq3_2 = in1(:,91);
ddq3_3 = in1(:,92);
ddq3_4 = in1(:,93);
ddq3_5 = in1(:,94);
ddq3_6 = in1(:,95);
ddq3_7 = in1(:,96);
ddq3_8 = in1(:,97);
ddq3_9 = in1(:,98);
ddq1_10 = in1(:,33);
ddq1_11 = in1(:,34);
ddq1_12 = in1(:,35);
ddq1_13 = in1(:,36);
ddq1_14 = in1(:,37);
ddq1_15 = in1(:,38);
ddq1_16 = in1(:,39);
ddq1_17 = in1(:,40);
ddq1_18 = in1(:,41);
ddq1_19 = in1(:,42);
ddq1_20 = in1(:,43);
ddq1_21 = in1(:,44);
ddq1_22 = in1(:,45);
ddq3_10 = in1(:,99);
ddq3_11 = in1(:,100);
ddq3_12 = in1(:,101);
ddq3_13 = in1(:,102);
ddq3_14 = in1(:,103);
ddq3_15 = in1(:,104);
ddq3_16 = in1(:,105);
ddq3_17 = in1(:,106);
ddq3_18 = in1(:,107);
ddq3_19 = in1(:,108);
ddq3_20 = in1(:,109);
ddq3_21 = in1(:,110);
ddq3_22 = in1(:,111);
dq1_1 = in1(:,2);
dq1_2 = in1(:,3);
dq1_3 = in1(:,4);
dq1_4 = in1(:,5);
dq1_5 = in1(:,6);
dq1_6 = in1(:,7);
dq1_7 = in1(:,8);
dq1_8 = in1(:,9);
dq1_9 = in1(:,10);
dq2_1 = in1(:,46);
dq2_2 = in1(:,47);
dq2_3 = in1(:,48);
dq2_4 = in1(:,49);
dq2_5 = in1(:,50);
dq2_6 = in1(:,51);
dq2_7 = in1(:,52);
dq2_8 = in1(:,53);
dq2_9 = in1(:,54);
dq3_1 = in1(:,68);
dq3_2 = in1(:,69);
dq3_3 = in1(:,70);
dq3_4 = in1(:,71);
dq3_5 = in1(:,72);
dq3_6 = in1(:,73);
dq3_7 = in1(:,74);
dq3_8 = in1(:,75);
dq3_9 = in1(:,76);
dq1_10 = in1(:,11);
dq1_11 = in1(:,12);
dq1_12 = in1(:,13);
dq1_13 = in1(:,14);
dq1_14 = in1(:,15);
dq1_15 = in1(:,16);
dq1_16 = in1(:,17);
dq1_17 = in1(:,18);
dq1_18 = in1(:,19);
dq1_19 = in1(:,20);
dq1_20 = in1(:,21);
dq1_21 = in1(:,22);
dq1_22 = in1(:,23);
dq2_10 = in1(:,55);
dq2_11 = in1(:,56);
dq2_12 = in1(:,57);
dq2_13 = in1(:,58);
dq2_14 = in1(:,59);
dq2_15 = in1(:,60);
dq2_16 = in1(:,61);
dq2_17 = in1(:,62);
dq2_18 = in1(:,63);
dq2_19 = in1(:,64);
dq2_20 = in1(:,65);
dq2_21 = in1(:,66);
dq2_22 = in1(:,67);
dq3_10 = in1(:,77);
dq3_11 = in1(:,78);
dq3_12 = in1(:,79);
dq3_13 = in1(:,80);
dq3_14 = in1(:,81);
dq3_15 = in1(:,82);
dq3_16 = in1(:,83);
dq3_17 = in1(:,84);
dq3_18 = in1(:,85);
dq3_19 = in1(:,86);
dq3_20 = in1(:,87);
dq3_21 = in1(:,88);
dq3_22 = in1(:,89);
t2 = N-1.0;
t3 = 1.0./t2;
out1 = [dq1_1.*(-1.0./2.0)+dq2_1-dq3_1.*(1.0./2.0)-T.*t3.*(ddq1_1-ddq3_1).*(1.0./8.0);dq1_2.*(-1.0./2.0)+dq2_2-dq3_2.*(1.0./2.0)-T.*t3.*(ddq1_2-ddq3_2).*(1.0./8.0);dq1_3.*(-1.0./2.0)+dq2_3-dq3_3.*(1.0./2.0)-T.*t3.*(ddq1_3-ddq3_3).*(1.0./8.0);dq1_4.*(-1.0./2.0)+dq2_4-dq3_4.*(1.0./2.0)-T.*t3.*(ddq1_4-ddq3_4).*(1.0./8.0);dq1_5.*(-1.0./2.0)+dq2_5-dq3_5.*(1.0./2.0)-T.*t3.*(ddq1_5-ddq3_5).*(1.0./8.0);dq1_6.*(-1.0./2.0)+dq2_6-dq3_6.*(1.0./2.0)-T.*t3.*(ddq1_6-ddq3_6).*(1.0./8.0);dq1_7.*(-1.0./2.0)+dq2_7-dq3_7.*(1.0./2.0)-T.*t3.*(ddq1_7-ddq3_7).*(1.0./8.0);dq1_8.*(-1.0./2.0)+dq2_8-dq3_8.*(1.0./2.0)-T.*t3.*(ddq1_8-ddq3_8).*(1.0./8.0);dq1_9.*(-1.0./2.0)+dq2_9-dq3_9.*(1.0./2.0)-T.*t3.*(ddq1_9-ddq3_9).*(1.0./8.0);dq1_10.*(-1.0./2.0)+dq2_10-dq3_10.*(1.0./2.0)-T.*t3.*(ddq1_10-ddq3_10).*(1.0./8.0);dq1_11.*(-1.0./2.0)+dq2_11-dq3_11.*(1.0./2.0)-T.*t3.*(ddq1_11-ddq3_11).*(1.0./8.0);dq1_12.*(-1.0./2.0)+dq2_12-dq3_12.*(1.0./2.0)-T.*t3.*(ddq1_12-ddq3_12).*(1.0./8.0);dq1_13.*(-1.0./2.0)+dq2_13-dq3_13.*(1.0./2.0)-T.*t3.*(ddq1_13-ddq3_13).*(1.0./8.0);dq1_14.*(-1.0./2.0)+dq2_14-dq3_14.*(1.0./2.0)-T.*t3.*(ddq1_14-ddq3_14).*(1.0./8.0);dq1_15.*(-1.0./2.0)+dq2_15-dq3_15.*(1.0./2.0)-T.*t3.*(ddq1_15-ddq3_15).*(1.0./8.0);dq1_16.*(-1.0./2.0)+dq2_16-dq3_16.*(1.0./2.0)-T.*t3.*(ddq1_16-ddq3_16).*(1.0./8.0);dq1_17.*(-1.0./2.0)+dq2_17-dq3_17.*(1.0./2.0)-T.*t3.*(ddq1_17-ddq3_17).*(1.0./8.0);dq1_18.*(-1.0./2.0)+dq2_18-dq3_18.*(1.0./2.0)-T.*t3.*(ddq1_18-ddq3_18).*(1.0./8.0);dq1_19.*(-1.0./2.0)+dq2_19-dq3_19.*(1.0./2.0)-T.*t3.*(ddq1_19-ddq3_19).*(1.0./8.0);dq1_20.*(-1.0./2.0)+dq2_20-dq3_20.*(1.0./2.0)-T.*t3.*(ddq1_20-ddq3_20).*(1.0./8.0);dq1_21.*(-1.0./2.0)+dq2_21-dq3_21.*(1.0./2.0)-T.*t3.*(ddq1_21-ddq3_21).*(1.0./8.0);dq1_22.*(-1.0./2.0)+dq2_22-dq3_22.*(1.0./2.0)-T.*t3.*(ddq1_22-ddq3_22).*(1.0./8.0)];
