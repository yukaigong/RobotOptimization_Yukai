function out1 = f_stepLength_LeftStance(in1,in2)
%F_STEPLENGTH_LEFTSTANCE
%    OUT1 = F_STEPLENGTH_LEFTSTANCE(IN1,IN2)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    01-Apr-2017 10:01:31

pFoot11 = in1(:,1);
pFoot12 = in1(:,2);
pFoot13 = in1(:,3);
pFoot21 = in1(:,13);
pFoot22 = in1(:,14);
pFoot23 = in1(:,15);
s1 = in2(:,4);
s2 = in2(:,5);
s3 = in2(:,6);
stepLength1 = in2(:,1);
stepLength2 = in2(:,2);
stepLength3 = in2(:,3);
out1 = [-s1.*(pFoot11-pFoot21+stepLength1);-s2.*(pFoot12-pFoot22+stepLength2);-s3.*(pFoot13-pFoot23+stepLength3)];
