function out1 = f_holConstrImpactForce_fourbar(in1)
%F_HOLCONSTRIMPACTFORCE_FOURBAR
%    OUT1 = F_HOLCONSTRIMPACTFORCE_FOURBAR(IN1)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    13-Apr-2017 16:28:24

Fimp1 = in1(:,23);
Fimp2 = in1(:,24);
out1 = [0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;0.0;Fimp1;0.0;Fimp1;0.0;0.0;0.0;0.0;0.0;Fimp2;0.0;Fimp2;0.0];
