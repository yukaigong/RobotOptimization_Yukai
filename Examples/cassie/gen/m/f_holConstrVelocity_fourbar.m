function out1 = f_holConstrVelocity_fourbar(in1)
%F_HOLCONSTRVELOCITY_FOURBAR
%    OUT1 = F_HOLCONSTRVELOCITY_FOURBAR(IN1)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    13-Apr-2017 16:27:56

dq11 = in1(:,33);
dq13 = in1(:,35);
dq19 = in1(:,41);
dq21 = in1(:,43);
out1 = [dq11+dq13;dq19+dq21];
