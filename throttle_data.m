close all; clear all; clc;

vel_order = 3;
vel_framelen = 51;
acc_order = 3;
acc_framelen = 51;

startmax = 10;  % for velocity
endmax = 20;    % for velocity

startmax2 = 10;  % for acceleration
endmax2 = 20;   % for accelerations

%% Steady State Velocity Data
throttle = [0, 25, 27.5, 30, 35, 40, 45, 50, 55, 60, 65, 70]';  % throttle percentage

% Throttle 27.5%
inFile = 'throttle_275_0mph/_vectornav_veltest_msg.data.txt';
velocity_data_275 = load(inFile, '-ascii');
filtered_vel_275 = sgolayfilt(velocity_data_275(:,2),vel_order,vel_framelen);
sorted_vel = sort(filtered_vel_275(:,1), 'descend');
throttle_275_vel = mean(sorted_vel(startmax:endmax,:));

% Throttle 30%
inFile = 'throttle_30_0mph/_vectornav_veltest_msg.data.txt';
velocity_data_30 = load(inFile, '-ascii');
filtered_vel_30 = sgolayfilt(velocity_data_30(:,2),vel_order,vel_framelen);
sorted_vel = sort(filtered_vel_30(:,1), 'descend');
throttle_30_vel = mean(sorted_vel(startmax:endmax,:));

% Throttle 35%
inFile = 'throttle_35_0mph/_vectornav_veltest_msg.data.txt';
velocity_data_35 = load(inFile, '-ascii');
filtered_vel_35 = sgolayfilt(velocity_data_35(:,2),vel_order,vel_framelen);
sorted_vel = sort(filtered_vel_35(:,1), 'descend');
throttle_35_vel = mean(sorted_vel(startmax:endmax,:));

% Throttle 40%
inFile = 'throttle_40_0mph/_vectornav_veltest_msg.data.txt';
velocity_data_40 = load(inFile, '-ascii');
filtered_vel_40 = sgolayfilt(velocity_data_40(:,2),vel_order,vel_framelen);
sorted_vel = sort(filtered_vel_40(:,1), 'descend');
throttle_40_vel = mean(sorted_vel(startmax:endmax,:));

% Throttle 45%
inFile = 'throttle_45_0mph/_vectornav_veltest_msg.data.txt';
velocity_data_45 = load(inFile, '-ascii');
filtered_vel_45 = sgolayfilt(velocity_data_45(:,2),vel_order,vel_framelen);
sorted_vel = sort(filtered_vel_45(:,1), 'descend');
throttle_45_vel = mean(sorted_vel(startmax:endmax,:));

% Throttle 50%
inFile = 'throttle_50_0mph/_vectornav_veltest_msg.data.txt';
velocity_data_50 = load(inFile, '-ascii');
filtered_vel_50 = sgolayfilt(velocity_data_50(:,2),vel_order,vel_framelen);
sorted_vel = sort(filtered_vel_50(:,1), 'descend');
throttle_50_vel = mean(sorted_vel(startmax:endmax,:));

% Throttle 55%
inFile = 'throttle_55_0mph/_vectornav_veltest_msg.data.txt';
velocity_data_55 = load(inFile, '-ascii');
filtered_vel_55 = sgolayfilt(velocity_data_55(:,2),vel_order,vel_framelen);
sorted_vel = sort(filtered_vel_55(:,1), 'descend');
throttle_55_vel = mean(sorted_vel(startmax:endmax,:));

% Throttle 60%
inFile = 'throttle_60_0mph/_vectornav_veltest_msg.data.txt';
velocity_data_60 = load(inFile, '-ascii');
filtered_vel_60 = sgolayfilt(velocity_data_60(:,2),vel_order,vel_framelen);
sorted_vel = sort(filtered_vel_60(:,1), 'descend');
throttle_60_vel = mean(sorted_vel(startmax:endmax,:));

% Throttle 65%
inFile = 'throttle_65_0mph/_vectornav_veltest_msg.data.txt';
velocity_data_65 = load(inFile, '-ascii');
filtered_vel_65 = sgolayfilt(velocity_data_65(:,2),vel_order,vel_framelen);
sorted_vel = sort(filtered_vel_65(:,1), 'descend');
throttle_65_vel = mean(sorted_vel(startmax:endmax,:));

% Throttle 70%
inFile = 'throttle_70_0mph/_vectornav_veltest_msg.data.txt';
velocity_data_70 = load(inFile, '-ascii');
filtered_vel_70 = sgolayfilt(velocity_data_70(:,2),vel_order,vel_framelen);
sorted_vel = sort(filtered_vel_70(:,1), 'descend');
throttle_70_vel = mean(sorted_vel(startmax:endmax,:));

velocity_ss = [0, 0, throttle_275_vel, throttle_30_vel, throttle_35_vel, throttle_40_vel, throttle_45_vel, throttle_50_vel, throttle_55_vel, throttle_60_vel, throttle_65_vel, throttle_70_vel]'; %m/s

figure(11)
plot(throttle, velocity_ss, 'b-o')
xlabel('Throttle %')
ylabel('Steady State Velocity (m/s)')
title('Steady State Velocity on Flat Pavement')

%% Acceleration Data For Each Throttle Percentage starting at 0 m/s
throttle = [0, 25, 27.5, 30, 35, 40, 45, 50, 55, 60, 65, 70];  % throttle percentage

acc0 = 0;
acc25 = 0;

% Throttle 27.5%
acc_data_275 =  gradient(velocity_data_275(:,2),0.02);
filtered_acc_275 = sgolayfilt(acc_data_275(:,1),acc_order,acc_framelen);
sorted_acc = sort(filtered_acc_275(:,1), 'descend');
acc275 = mean(sorted_acc(startmax2:endmax2,:));

% Throttle 30%
acc_data_30 =  gradient(velocity_data_30(:,2),0.02);
filtered_acc_30 = sgolayfilt(acc_data_30(:,1),acc_order,acc_framelen);
sorted_acc = sort(filtered_acc_30(:,1), 'descend');
acc30 = mean(sorted_acc(startmax2:endmax2,:));

% Throttle 35%
acc_data_35 =  gradient(velocity_data_35(:,2),0.02);
filtered_acc_35 = sgolayfilt(acc_data_35(:,1),acc_order,acc_framelen);
sorted_acc = sort(filtered_acc_35(:,1), 'descend');
acc35 = mean(sorted_acc(startmax2:endmax2,:));

% Throttle 40%
acc_data_40 =  gradient(velocity_data_40(:,2),0.02);
filtered_acc_40 = sgolayfilt(acc_data_40(:,1),acc_order,acc_framelen);
sorted_acc = sort(filtered_acc_40(:,1), 'descend');
acc40 = mean(sorted_acc(startmax2:endmax2,:));

% Throttle 45%
acc_data_45 =  gradient(velocity_data_45(:,2),0.02);
filtered_acc_45 = sgolayfilt(acc_data_45(:,1),acc_order,acc_framelen);
sorted_acc = sort(filtered_acc_45(:,1), 'descend');
acc45 = mean(sorted_acc(startmax2:endmax2,:));

% Throttle 50%
acc_data_50 =  gradient(velocity_data_50(:,2),0.02);
filtered_acc_50 = sgolayfilt(acc_data_50(:,1),acc_order,acc_framelen);
sorted_acc = sort(filtered_acc_50(:,1), 'descend');
acc50 = mean(sorted_acc(startmax2:endmax2,:));

% Throttle 55%
acc_data_55 =  gradient(velocity_data_55(:,2),0.02);
filtered_acc_55 = sgolayfilt(acc_data_55(:,1),acc_order,acc_framelen);
sorted_acc = sort(filtered_acc_55(:,1), 'descend');
acc55 = mean(sorted_acc(startmax2:endmax2,:));

% Throttle 60%
acc_data_60 =  gradient(velocity_data_60(:,2),0.02);
filtered_acc_60 = sgolayfilt(acc_data_60(:,1),acc_order,acc_framelen);
sorted_acc = sort(filtered_acc_60(:,1), 'descend');
acc60 = mean(sorted_acc(startmax2:endmax2,:));

% Throttle 65%
acc_data_65 =  gradient(velocity_data_65(:,2),0.02);
filtered_acc_65 = sgolayfilt(acc_data_65(:,1),acc_order,acc_framelen);
sorted_acc = sort(filtered_acc_65(:,1), 'descend');
acc65 = mean(sorted_acc(startmax2:endmax2,:));

% Throttle 70%
acc_data_70 =  gradient(velocity_data_70(:,2),0.02);
filtered_acc_70 = sgolayfilt(acc_data_70(:,1),acc_order,acc_framelen);
sorted_acc = sort(filtered_acc_70(:,1), 'descend');
acc70 = mean(sorted_acc(startmax2:endmax2,:));

acceleration= [acc0, acc25, acc275, acc30, acc35, acc40, acc45, acc50, acc55, acc60, acc65, acc70];

figure(12)
plot(throttle, acceleration, 'r-o')
xlabel('Throttle %')
ylabel('Acceleration (m/s^2)')
title('Acceleration from Throttle Step Input starting at 0 m/s')

