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