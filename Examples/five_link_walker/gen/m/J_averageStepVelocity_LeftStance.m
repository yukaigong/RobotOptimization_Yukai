function out1 = J_averageStepVelocity_LeftStance(in1)
%J_AVERAGESTEPVELOCITY_LEFTSTANCE
%    OUT1 = J_AVERAGESTEPVELOCITY_LEFTSTANCE(IN1)

%    This function was generated by the Symbolic Math Toolbox version 7.0.
%    30-Mar-2017 15:28:43

T = in1(:,15);
q1_1 = in1(:,1);
q2_1 = in1(:,8);
t2 = 1.0./T;
out1 = [-t2,0.0,0.0,0.0,0.0,0.0,0.0,t2,0.0,0.0,0.0,0.0,0.0,0.0,1.0./T.^2.*(q1_1-q2_1)];