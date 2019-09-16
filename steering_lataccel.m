close all; clear all; clc;

order = 3;      % order of sgolay filter
framelen = 51;  % window size of sgolay filter
minlen = 10;    % takes the amount of minimum values
startmin = 5;
endmin = 10;

%% Lateral Acceleration Data For Variety of velocities for 90 deg steering

steering0ms = 0;

vel_file = 'lateral90deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(:,2));
long_file = 'lateral90deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering25ms = vel_ave25/radius25;

vel_file = 'lateral90deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(:,2));
long_file = 'lateral90deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering4ms = vel_ave4/radius4;

vel_file = 'lateral90deg_6ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave6 = mean(vel_data(:,2));
long_file = 'lateral90deg_6ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius6 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering6ms = vel_ave6/radius6;

vel_file = 'lateral90deg_8ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave8 = mean(vel_data(:,2));
long_file = 'lateral90deg_8ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius8 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering8ms = vel_ave8/radius8;

vel_file = 'lateral90deg_10ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave10 = mean(vel_data(:,2));
long_file = 'lateral90deg_10ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius10 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering10ms = vel_ave10/radius10;

velocity = [0, vel_ave25, vel_ave4, vel_ave6, vel_ave8, vel_ave10];  % m/s
steering90 = [steering0ms, steering25ms, steering4ms, steering6ms, steering8ms, steering10ms];

figure(10)
plot(velocity, steering90, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
xlabel('Velocity (m/s)')
ylabel('Lateral Acceleration (m/s^2)')
title('Steering Speed-based Lateral Acceleration Map')
hold on
%% Lateral Acceleration Data For Variety of velocities for 180 deg steering

steering0ms = 0;

vel_file = 'lateral180deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(:,2));
long_file = 'lateral180deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5 -0.2;  % there is an error of approximately 0.2

steering25ms = vel_ave25/radius25;

vel_file = 'lateral180deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(:,2));
long_file = 'lateral180deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering4ms = vel_ave4/radius4;

vel_file = 'lateral180deg_6ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave6 = mean(vel_data(:,2));
long_file = 'lateral180deg_6ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius6 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5 -0.15;

steering6ms = vel_ave6/radius6;

vel_file = 'lateral180deg_8ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave8 = mean(vel_data(:,2));
long_file = 'lateral180deg_8ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius8 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5 -0.25;

steering8ms = vel_ave8/radius8;

velocity = [0, vel_ave25, vel_ave4, vel_ave6, vel_ave8];  % m/s
steering180 = [steering0ms, steering25ms, steering4ms, steering6ms, steering8ms];

plot(velocity, steering180, 'color', [1.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')

%% Lateral Acceleration Data For Variety of velocities for 270 deg steering

steering0ms = 0;

vel_file = 'lateral270deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(:,2));
long_file = 'lateral270deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5; 

steering25ms = vel_ave25/radius25;

vel_file = 'lateral270deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(:,2));
long_file = 'lateral270deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5 - 0.15;

steering4ms = vel_ave4/radius4;

vel_file = 'lateral270deg_6ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave6 = mean(vel_data(:,2));
long_file = 'lateral270deg_6ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius6 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering6ms = vel_ave6/radius6;

velocity = [0, vel_ave25, vel_ave4, vel_ave6];  % m/s
steering270 = [steering0ms, steering25ms, steering4ms, steering6ms];

plot(velocity, steering270, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')

%% Lateral Acceleration Data For Variety of velocities for 360 deg steering

steering0ms = 0;

vel_file = 'lateral360deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(500:1250,2))
long_file = 'lateral360deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(1000:2500,2)) - min(long_data(1000:2500,2))) * 0.5  
steering25ms = vel_ave25/radius25

vel_file = 'lateral360deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(1:500,2));
long_file = 'lateral360deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(1:1000,2)) - min(long_data(1:1000,2))) * 0.5;

steering4ms = vel_ave4/radius4;

vel_file = 'lateral360deg_6ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave6 = mean(vel_data(1:400,2));
long_file = 'lateral360deg_6ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius6 = (max(long_data(1:800,2)) - min(long_data(1:800,2))) * 0.5;

steering6ms = vel_ave6/radius6;

velocity = [0, vel_ave25, vel_ave4, vel_ave6];  % m/s
steering360 = [steering0ms, steering25ms, steering4ms, steering6ms];

plot(velocity, steering360, 'color', [0.0 1.0 1.0], 'linestyle', '-', 'marker', 'o')

%% Lateral Acceleration Data For Variety of velocities for 450 deg steering

steering0ms = 0;

vel_file = 'lateral450deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(1:550,2));
long_file = 'lateral450deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(1:1100,2)) - min(long_data(1:1100,2))) * 0.5;  
steering25ms = vel_ave25/radius25;

vel_file = 'lateral450deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(1:325,2));
long_file = 'lateral450deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(1:750,2)) - min(long_data(1:750,2))) * 0.5;

steering4ms = vel_ave4/radius4;

velocity = [0, vel_ave25, vel_ave4];  % m/s
steering360 = [steering0ms, steering25ms, steering4ms];

plot(velocity, steering360, 'color', [1.0 0.0 1.0], 'linestyle', '-', 'marker', 'o')

grid on
legend('90° steering', '180° steering', '270° steering', '360° steering', '450° steering')