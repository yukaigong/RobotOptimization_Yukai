function [trajectory_log] = ROS_JointTrajectory(t_out, q_all, dt, Ts, time_playback_factor, varargin)
% ROS_JointTrajectory(q_all, dt, time_playback_factor)
% Creates a ROS 'trajectory_msgs/JointTrajectory' message that is filled
% with the data from q_all. 
%
%   q_all (N x 16): logged configuration vector for N time steps
%   dt: desired sample rate
%   time_playback_factor: desired playback factor (1 == real-time)
%
%   Author: Ross Hartley
%   Date:   12/02/2016

if nargin < 4
    time_playback_factor = 1;
end

N = size(q_all,1);
dN = round(dt/Ts);

% Initialize ROS Message
trajectory_log = rosmessage('trajectory_msgs/JointTrajectory');
trajectory_log.JointNames = {'x','y','z','roll','pitch','yaw'...
    'hip_abduction_left', 'hip_rotation_left', ...
    'hip_flexion_left', 'knee_joint_left', 'ankle_joint_left', 'toe_joint_left',...
    'hip_abduction_right', 'hip_rotation_right', 'hip_flexion_right', ...
    'knee_joint_right', 'ankle_joint_right', 'toe_joint_right'};
trajectory_log.Header.FrameId = 'world_gazebo';

% Initialize Points array
display([num2str(length(2:dN:N)), ' Data Points to log...'])
points = [];
for i = 2:dN:N
   points = horzcat(points,rosmessage('trajectory_msgs/JointTrajectoryPoint'));
end

% Fill in trajectory data
index = 1;
i_last = 1;
for i = 2:dN:N
    q_tmp = q_all(i,:)';
    q = q_tmp([1:6,8:11,13:14,16:19,21:22]);

    points(index).Positions = q;
    points(index).TimeFromStart.Nsec = int32(((t_out(i) - t_out(i_last))/1e-9)/time_playback_factor);
    
    i_last = i;
    index = index + 1;
end
trajectory_log.Points = points;

end