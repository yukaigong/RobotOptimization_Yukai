function out1 = J_intTrapPos_RightStance(in1,N)
%J_INTTRAPPOS_RIGHTSTANCE
%    OUT1 = J_INTTRAPPOS_RIGHTSTANCE(IN1,N)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    30-Mar-2017 15:24:54

T = in1(:,1);
dq1_1 = in1(:,9);
dq1_2 = in1(:,10);
dq1_3 = in1(:,11);
dq1_4 = in1(:,12);
dq1_5 = in1(:,13);
dq1_6 = in1(:,14);
dq1_7 = in1(:,15);
dq2_1 = in1(:,23);
dq2_2 = in1(:,24);
dq2_3 = in1(:,25);
dq2_4 = in1(:,26);
dq2_5 = in1(:,27);
dq2_6 = in1(:,28);
dq2_7 = in1(:,29);
t2 = N-1.0;
t3 = 1.0./t2;
out1 = reshape([t3.*(dq1_1+dq2_1).*(-1.0./2.0),t3.*(dq1_2+dq2_2).*(-1.0./2.0),t3.*(dq1_3+dq2_3).*(-1.0./2.0),t3.*(dq1_4+dq2_4).*(-1.0./2.0),t3.*(dq1_5+dq2_5).*(-1.0./2.0),t3.*(dq1_6+dq2_6).*(-1.0./2.0),t3.*(dq1_7+dq2_7).*(-1.0./2.0),-1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,-1.0,T.*t3.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,T.*t3.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,T.*t3.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,T.*t3.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,T.*t3.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,T.*t3.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,T.*t3.*(-1.0./2.0),1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,1.0,T.*t3.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,T.*t3.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,T.*t3.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,T.*t3.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,T.*t3.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,T.*t3.*(-1.0./2.0),0.0,0.0,0.0,0.0,0.0,0.0,0.0,T.*t3.*(-1.0./2.0)],[7,29]);
