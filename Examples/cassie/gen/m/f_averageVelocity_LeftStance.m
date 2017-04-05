function out1 = f_averageVelocity_LeftStance(in1,in2)
%F_AVERAGEVELOCITY_LEFTSTANCE
%    OUT1 = F_AVERAGEVELOCITY_LEFTSTANCE(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    01-Apr-2017 10:01:47

T = in1(:,45);
q1_1 = in1(:,1);
q1_2 = in1(:,2);
q1_3 = in1(:,3);
q2_1 = in1(:,23);
q2_2 = in1(:,24);
q2_3 = in1(:,25);
s1 = in2(:,4);
s2 = in2(:,5);
s3 = in2(:,6);
v1 = in2(:,1);
v2 = in2(:,2);
v3 = in2(:,3);
t2 = 1.0./T;
out1 = [-s1.*(v1+t2.*(q1_1-q2_1));-s2.*(v2+t2.*(q1_2-q2_2));-s3.*(v3+t2.*(q1_3-q2_3))];
