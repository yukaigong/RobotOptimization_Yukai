function out1 = f_intVel_RightStance(in1,N)
%F_INTVEL_RIGHTSTANCE
%    OUT1 = F_INTVEL_RIGHTSTANCE(IN1,N)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    13-Apr-2017 16:29:02

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
ddq2_1 = in1(:,46);
ddq2_2 = in1(:,47);
ddq2_3 = in1(:,48);
ddq2_4 = in1(:,49);
ddq2_5 = in1(:,50);
ddq2_6 = in1(:,51);
ddq2_7 = in1(:,52);
ddq2_8 = in1(:,53);
ddq2_9 = in1(:,54);
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
ddq2_10 = in1(:,55);
ddq2_11 = in1(:,56);
ddq2_12 = in1(:,57);
ddq2_13 = in1(:,58);
ddq2_14 = in1(:,59);
ddq2_15 = in1(:,60);
ddq2_16 = in1(:,61);
ddq2_17 = in1(:,62);
ddq2_18 = in1(:,63);
ddq2_19 = in1(:,64);
ddq2_20 = in1(:,65);
ddq2_21 = in1(:,66);
ddq2_22 = in1(:,67);
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
out1 = [-dq1_1+dq3_1-T.*t3.*(ddq1_1+ddq2_1.*4.0+ddq3_1).*(1.0./6.0);-dq1_2+dq3_2-T.*t3.*(ddq1_2+ddq2_2.*4.0+ddq3_2).*(1.0./6.0);-dq1_3+dq3_3-T.*t3.*(ddq1_3+ddq2_3.*4.0+ddq3_3).*(1.0./6.0);-dq1_4+dq3_4-T.*t3.*(ddq1_4+ddq2_4.*4.0+ddq3_4).*(1.0./6.0);-dq1_5+dq3_5-T.*t3.*(ddq1_5+ddq2_5.*4.0+ddq3_5).*(1.0./6.0);-dq1_6+dq3_6-T.*t3.*(ddq1_6+ddq2_6.*4.0+ddq3_6).*(1.0./6.0);-dq1_7+dq3_7-T.*t3.*(ddq1_7+ddq2_7.*4.0+ddq3_7).*(1.0./6.0);-dq1_8+dq3_8-T.*t3.*(ddq1_8+ddq2_8.*4.0+ddq3_8).*(1.0./6.0);-dq1_9+dq3_9-T.*t3.*(ddq1_9+ddq2_9.*4.0+ddq3_9).*(1.0./6.0);-dq1_10+dq3_10-T.*t3.*(ddq1_10+ddq2_10.*4.0+ddq3_10).*(1.0./6.0);-dq1_11+dq3_11-T.*t3.*(ddq1_11+ddq2_11.*4.0+ddq3_11).*(1.0./6.0);-dq1_12+dq3_12-T.*t3.*(ddq1_12+ddq2_12.*4.0+ddq3_12).*(1.0./6.0);-dq1_13+dq3_13-T.*t3.*(ddq1_13+ddq2_13.*4.0+ddq3_13).*(1.0./6.0);-dq1_14+dq3_14-T.*t3.*(ddq1_14+ddq2_14.*4.0+ddq3_14).*(1.0./6.0);-dq1_15+dq3_15-T.*t3.*(ddq1_15+ddq2_15.*4.0+ddq3_15).*(1.0./6.0);-dq1_16+dq3_16-T.*t3.*(ddq1_16+ddq2_16.*4.0+ddq3_16).*(1.0./6.0);-dq1_17+dq3_17-T.*t3.*(ddq1_17+ddq2_17.*4.0+ddq3_17).*(1.0./6.0);-dq1_18+dq3_18-T.*t3.*(ddq1_18+ddq2_18.*4.0+ddq3_18).*(1.0./6.0);-dq1_19+dq3_19-T.*t3.*(ddq1_19+ddq2_19.*4.0+ddq3_19).*(1.0./6.0);-dq1_20+dq3_20-T.*t3.*(ddq1_20+ddq2_20.*4.0+ddq3_20).*(1.0./6.0);-dq1_21+dq3_21-T.*t3.*(ddq1_21+ddq2_21.*4.0+ddq3_21).*(1.0./6.0);-dq1_22+dq3_22-T.*t3.*(ddq1_22+ddq2_22.*4.0+ddq3_22).*(1.0./6.0)];
