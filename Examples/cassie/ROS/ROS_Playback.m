%% ROS Initialization
ROS_init;

%% ROS Playpack
Ts = mean(diff(t_log));
dt = Ts;
time_playback_factor = 0.5;

trajectory_log = ROS_JointTrajectory(t_log, q_log', dt, Ts, time_playback_factor);
disp('Publishing Joint Trajectory')
pub = rospublisher('/set_joint_trajectory', 'trajectory_msgs/JointTrajectory');
send(pub,trajectory_log);

