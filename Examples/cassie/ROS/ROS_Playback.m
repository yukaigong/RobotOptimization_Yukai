%% ROS Initialization
ROS_init;

%% ROS Playpack
Ts = mean(diff(t_all));
dt = Ts;
time_playback_factor = 1;

trajectory_log = ROS_JointTrajectory(t_all, q_all, dt, Ts, time_playback_factor);
disp('Publishing Joint Trajectory')
pub = rospublisher('/set_joint_trajectory', 'trajectory_msgs/JointTrajectory');
send(pub,trajectory_log);

