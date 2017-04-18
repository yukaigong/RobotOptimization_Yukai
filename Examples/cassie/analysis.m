%% compare bazeir curve for the two 
figure
right_domain=outputs{1}.a(1,:);
left_domain=outputs{2}.a(1,:);
temp=left_domain;
temp=temp([31:60,1:30]);
temp([1:12,31:42])=-temp([1:12,31:42]);
left_domain=temp;

plot(1:60,right_domain)
hold on
plot(1:60,left_domain)
hold off

%% see the torso position and angle
% lateral movement
figure
subplot(1,2,1)
plot(0:outputs{1}.t/28:outputs{1}.t,outputs{1}.q(:,2))
hold on
plot(0:outputs{2}.t/28:outputs{2}.t,outputs{2}.q(:,2))
hold off
title('lateral movement')
% roll angle
subplot(1,2,2)
plot(0:outputs{1}.t/28:outputs{1}.t,outputs{1}.q(:,4))
hold on
plot(0:outputs{2}.t/28:outputs{2}.t,outputs{2}.q(:,4))
hold off
title('roll angle')
%% check the maximum torque

config_file = fullfile('config','cassie.yaml');
optConfig = cell_to_matrix_scan(yaml_read_file(config_file));
domainNames = fields(optConfig.boundaries);

boundary = optConfig.boundaries.('domain1');
s=linspace(0,2,58);
u=outputs{1}.u;
u=[u;outputs{2}.u];

figure
% ankle torque
subplot(3,2,1)
plot(s,u(:,5),s,u(:,10))
hold on
plot(s,boundary.minTorqueLimit(5)*ones(length(s),1),'k-.',s,boundary.minTorqueLimit(10)*ones(length(s),1),'k-.')
plot(s,boundary.maxTorqueLimit(5)*ones(length(s),1),'k-.',s,boundary.maxTorqueLimit(10)*ones(length(s),1),'k-.')
hold off
title('ankle')
% hip abduction
subplot(3,2,2)
plot(s,u(:,1),s,u(:,6))
hold on
plot(s,boundary.minTorqueLimit(1)*ones(length(s),1),'k-.',s,boundary.minTorqueLimit(6)*ones(length(s),1),'k-.')
plot(s,boundary.maxTorqueLimit(1)*ones(length(s),1),'k-.',s,boundary.maxTorqueLimit(6)*ones(length(s),1),'k-.')
hold off
title('hip abduction')

% hip rotation
subplot(3,2,3)
plot(s,u(:,2),s,u(:,7))
hold on
plot(s,boundary.minTorqueLimit(2)*ones(length(s),1),'k-.',s,boundary.minTorqueLimit(7)*ones(length(s),1),'k-.')
plot(s,boundary.maxTorqueLimit(2)*ones(length(s),1),'k-.',s,boundary.maxTorqueLimit(7)*ones(length(s),1),'k-.')
hold off
title('hip rotation')

% leg( hip flexion)
subplot(3,2,4)
plot(s,u(:,3),s,u(:,8))
hold on
plot(s,boundary.minTorqueLimit(3)*ones(length(s),1),'k-.',s,boundary.minTorqueLimit(8)*ones(length(s),1),'k-.')
plot(s,boundary.maxTorqueLimit(3)*ones(length(s),1),'k-.',s,boundary.maxTorqueLimit(8)*ones(length(s),1),'k-.')
hold off
title('leg( hip flexion)')

% knee
subplot(3,2,5)
plot(s,u(:,4),s,u(:,9))
hold on
plot(s,boundary.minTorqueLimit(4)*ones(length(s),1),'k-.',s,boundary.minTorqueLimit(9)*ones(length(s),1),'k-.')
plot(s,boundary.maxTorqueLimit(4)*ones(length(s),1),'k-.',s,boundary.maxTorqueLimit(9)*ones(length(s),1),'k-.')
hold off
title('knee')

%% check the joints
q=outputs{1}.q;
q=[q;outputs{2}.q];
%torso
figure
for i=1:6
    subplot(2,3,i)
    plot(s,q(:,i))
    hold on
    plot(s,boundary.minJointAngles(i)*ones(length(s),1),'k-.')
    plot(s,boundary.maxJointAngles(i)*ones(length(s),1),'k-.')
    hold off
    title(['q' num2str(i)]);
end
% right
figure
for i=7:14
    subplot(2,4,i-6)
    plot(s,q(:,i))
    hold on
    plot(s,boundary.minJointAngles(i)*ones(length(s),1),'k-.')
    plot(s,boundary.maxJointAngles(i)*ones(length(s),1),'k-.')
    hold off
    title(['q' num2str(i)]);
end
%left
figure
for i=15:22
    subplot(2,4,i-14)
    plot(s,q(:,i))
    hold on
    plot(s,boundary.minJointAngles(i)*ones(length(s),1),'k-.')
    plot(s,boundary.maxJointAngles(i)*ones(length(s),1),'k-.')
    hold off
    title(['q' num2str(i)]);
end

%% check the joint velocities
dq=outputs{1}.dq;
dq=[dq;outputs{2}.dq];
%torso
figure
for i=1:6
    subplot(2,3,i)
    plot(s,dq(:,i))
    hold on
    plot(s,boundary.minJointVelocities(i)*ones(length(s),1),'k-.')
    plot(s,boundary.maxJointVelocities(i)*ones(length(s),1),'k-.')
    hold off
    title(['dq' num2str(i)]);
end
% right
figure
for i=7:14
    subplot(2,4,i-6)
    plot(s,dq(:,i))
    hold on
    plot(s,boundary.minJointVelocities(i)*ones(length(s),1),'k-.')
    plot(s,boundary.maxJointVelocities(i)*ones(length(s),1),'k-.')
    hold off
    title(['dq' num2str(i)]);
end
%left
figure
for i=15:22
    subplot(2,4,i-14)
    plot(s,dq(:,i))
    hold on
    plot(s,boundary.minJointVelocities(i)*ones(length(s),1),'k-.')
    plot(s,boundary.maxJointVelocities(i)*ones(length(s),1),'k-.')
    hold off
    title(['dq' num2str(i)]);
end