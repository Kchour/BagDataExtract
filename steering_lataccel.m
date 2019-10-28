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

steering25ms = vel_ave25*vel_ave25/radius25;

vel_file = 'lateral90deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(:,2));
long_file = 'lateral90deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering4ms = vel_ave4*vel_ave4/radius4;

vel_file = 'lateral90deg_6ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave6 = mean(vel_data(:,2));
long_file = 'lateral90deg_6ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius6 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering6ms = vel_ave6*vel_ave6/radius6;

vel_file = 'lateral90deg_8ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave8 = mean(vel_data(:,2));
long_file = 'lateral90deg_8ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius8 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering8ms = vel_ave8*vel_ave8/radius8;

vel_file = 'lateral90deg_10ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave10 = mean(vel_data(:,2));
long_file = 'lateral90deg_10ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius10 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering10ms = vel_ave10*vel_ave10/radius10;

velocity90 = [vel_ave25, vel_ave4, vel_ave6, vel_ave8, vel_ave10];  % m/s
steering90 = [steering25ms, steering4ms, steering6ms, steering8ms, steering10ms];
lat_vel90 = steering90./velocity90;

%% Lateral Acceleration Data For Variety of velocities for 180 deg steering

steering0ms = 0;

vel_file = 'lateral180deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(:,2));
long_file = 'lateral180deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5 -0.2;  % there is an error of approximately 0.2

steering25ms = vel_ave25*vel_ave25/radius25;

vel_file = 'lateral180deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(:,2));
long_file = 'lateral180deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering4ms = vel_ave4*vel_ave4/radius4;

vel_file = 'lateral180deg_6ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave6 = mean(vel_data(:,2));
long_file = 'lateral180deg_6ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius6 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5 -0.15;

steering6ms = vel_ave6*vel_ave6/radius6;

vel_file = 'lateral180deg_8ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave8 = mean(vel_data(:,2));
long_file = 'lateral180deg_8ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius8 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5 -0.25;

steering8ms = vel_ave8*vel_ave8/radius8;

velocity180 = [vel_ave25, vel_ave4, vel_ave6, vel_ave8];  % m/s
steering180 = [steering25ms, steering4ms, steering6ms, steering8ms];
lat_vel180 = steering180./velocity180;


%% Lateral Acceleration Data For Variety of velocities for 270 deg steering

steering0ms = 0;

vel_file = 'lateral270deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(:,2));
long_file = 'lateral270deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5; 

steering25ms = vel_ave25*vel_ave25/radius25;

vel_file = 'lateral270deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(:,2));
long_file = 'lateral270deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5 - 0.15;

steering4ms = vel_ave4*vel_ave4/radius4;

vel_file = 'lateral270deg_6ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave6 = mean(vel_data(:,2));
long_file = 'lateral270deg_6ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius6 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering6ms = vel_ave6*vel_ave6/radius6;

velocity270 = [vel_ave25, vel_ave4, vel_ave6];  % m/s
steering270 = [steering25ms, steering4ms, steering6ms];
lat_vel270 = steering270./velocity270;

%% Lateral Acceleration Data For Variety of velocities for 360 deg steering

steering0ms = 0;

vel_file = 'lateral360deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(500:1250,2));
long_file = 'lateral360deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(1000:2500,2)) - min(long_data(1000:2500,2))) * 0.5;

steering25ms = vel_ave25*vel_ave25/radius25;

vel_file = 'lateral360deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(1:500,2));
long_file = 'lateral360deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(1:1000,2)) - min(long_data(1:1000,2))) * 0.5;

steering4ms = vel_ave4*vel_ave4/radius4;

vel_file = 'lateral360deg_6ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave6 = mean(vel_data(1:400,2));
long_file = 'lateral360deg_6ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius6 = (max(long_data(1:800,2)) - min(long_data(1:800,2))) * 0.5;

steering6ms = vel_ave6*vel_ave6/radius6;

velocity360 = [vel_ave25, vel_ave4, vel_ave6];  % m/s
steering360 = [steering25ms, steering4ms, steering6ms];
lat_vel360 = steering360./velocity360;


%% Lateral Acceleration Data For Variety of velocities for 450 deg steering

steering0ms = 0;

vel_file = 'lateral450deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(1:550,2));
long_file = 'lateral450deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(1:1100,2)) - min(long_data(1:1100,2))) * 0.5;  
steering25ms = vel_ave25*vel_ave25/radius25;

vel_file = 'lateral450deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(1:325,2));
long_file = 'lateral450deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(1:750,2)) - min(long_data(1:750,2))) * 0.5;

steering4ms = vel_ave4*vel_ave4/radius4;

velocity450 = [vel_ave25, vel_ave4];  % m/s
steering450 = [steering25ms, steering4ms];
lat_vel450 = steering450./velocity450;


%% Lateral Acceleration Data For Variety of velocities for -90 deg steering

steering0ms = 0;

vel_file = 'lateral_90deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(:,2));
long_file = 'lateral_90deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering25ms = vel_ave25*vel_ave25/radius25;

vel_file = 'lateral_90deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(:,2));
long_file = 'lateral_90deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering4ms = vel_ave4*vel_ave4/radius4;

vel_file = 'lateral_90deg_6ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave6 = mean(vel_data(:,2));
long_file = 'lateral_90deg_6ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius6 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering6ms = vel_ave6*vel_ave6/radius6;

vel_file = 'lateral_90deg_8ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave8 = mean(vel_data(:,2));
long_file = 'lateral_90deg_8ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius8 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering8ms = vel_ave8*vel_ave8/radius8;

vel_file = 'lateral_90deg_10ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave10 = mean(vel_data(:,2));
long_file = 'lateral_90deg_10ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius10 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering10ms = vel_ave10*vel_ave10/radius10;

velocity_90 = [vel_ave25, vel_ave4, vel_ave6, vel_ave8, vel_ave10];  % m/s
steering_90 = -[steering25ms, steering4ms, steering6ms, steering8ms, steering10ms];
lat_vel_90 = steering_90./velocity_90;


%% Lateral Acceleration Data For Variety of velocities for 180 deg steering

steering0ms = 0;

vel_file = 'lateral_180deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(:,2));
long_file = 'lateral_180deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;  % there is an error of approximately 0.2

steering25ms = vel_ave25*vel_ave25/radius25;

vel_file = 'lateral_180deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(:,2));
long_file = 'lateral_180deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering4ms = vel_ave4*vel_ave4/radius4;

vel_file = 'lateral_180deg_6ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave6 = mean(vel_data(:,2));
long_file = 'lateral_180deg_6ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius6 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering6ms = vel_ave6*vel_ave6/radius6;

vel_file = 'lateral_180deg_8ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave8 = mean(vel_data(:,2));
long_file = 'lateral_180deg_8ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius8 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering8ms = vel_ave8*vel_ave8/radius8;

velocity_180 = [vel_ave25, vel_ave4, vel_ave6, vel_ave8];  % m/s
steering_180 = -[steering25ms, steering4ms, steering6ms, steering8ms];
lat_vel_180 = steering_180./velocity_180;

%% Lateral Acceleration Data For Variety of velocities for 270 deg steering

steering0ms = 0;

vel_file = 'lateral_270deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(:,2));
long_file = 'lateral_270deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5; 

steering25ms = vel_ave25*vel_ave25/radius25;

vel_file = 'lateral_270deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(:,2));
long_file = 'lateral_270deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering4ms = vel_ave4*vel_ave4/radius4;

vel_file = 'lateral_270deg_6ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave6 = mean(vel_data(:,2));
long_file = 'lateral_270deg_6ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius6 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering6ms = vel_ave6*vel_ave6/radius6;

velocity_270 = [vel_ave25, vel_ave4, vel_ave6];  % m/s
steering_270 = -[steering25ms, steering4ms, steering6ms];
lat_vel_270 = steering_270./velocity_270;

%% Lateral Acceleration Data For Variety of velocities for 360 deg steering

steering0ms = 0;

vel_file = 'lateral_360deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(:,2));
long_file = 'lateral_360deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;  

steering25ms = vel_ave25*vel_ave25/radius25;

vel_file = 'lateral_360deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(1:500,2));
long_file = 'lateral_360deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering4ms = vel_ave4*vel_ave4/radius4;

vel_file = 'lateral_360deg_6ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave6 = mean(vel_data(:,2));
long_file = 'lateral_360deg_6ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius6 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering6ms = vel_ave6*vel_ave6/radius6;

velocity_360 = [vel_ave25, vel_ave4, vel_ave6];  % m/s
steering_360 = -[steering25ms, steering4ms, steering6ms];
lat_vel_360 = steering_360./velocity_360;

%% Lateral Acceleration Data For Variety of velocities for 450 deg steering

steering0ms = 0;

vel_file = 'lateral450deg_25ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave25 = mean(vel_data(:,2));
long_file = 'lateral450deg_25ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius25 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;  
steering25ms = vel_ave25*vel_ave25/radius25;

vel_file = 'lateral450deg_4ms/_vectornav_veltest_msg.data.txt';
vel_data = load(vel_file, '-ascii');
vel_ave4 = mean(vel_data(:,2));
long_file = 'lateral450deg_4ms/_vehicle_odom2_msg.x.txt';
long_data = load(long_file, '-ascii');
radius4 = (max(long_data(:,2)) - min(long_data(:,2))) * 0.5;

steering4ms = vel_ave4*vel_ave4/radius4;

velocity_450 = [vel_ave25, vel_ave4];  % m/s;
steering_450 = -[steering25ms, steering4ms];
lat_vel_450 = steering_450./velocity_450;


%% plot lateral velocity

figure(11)
plot(velocity450, lat_vel450, 'color', [1.0 0.0 1.0], 'linestyle', '-', 'marker', 'o')
hold on
plot(velocity360, lat_vel360, 'color', [0.0 1.0 1.0], 'linestyle', '-', 'marker', 'o')
plot(velocity270, lat_vel270, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity180, lat_vel180, 'color', [1.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity90, lat_vel90, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_90, lat_vel_90, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_180, lat_vel_180, 'color', [1.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_270, lat_vel_270, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_360, lat_vel_360, 'color', [0.0 1.0 1.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_450, lat_vel_450, 'color', [1.0 0.0 1.0], 'linestyle', '-', 'marker', 'o')

xlabel('Velocity (m/s)')
ylabel('Lateral Velocity (m/s)')
title('Steering Speed-based Lateral Velocity Map')
grid on
legend('450° steering', '360° steering', '270° steering', '180° steering', '90° steering',...
       '-90° steering', '-180° steering', '-270° steering', '-360° steering', '-450° steering')
   
%% Plotting Lateral Acceleration Again
hold off

figure(12)
plot(velocity450, steering450, 'color', [1.0 0.0 1.0], 'linestyle', '-', 'marker', 'o')
hold on
plot(velocity360, steering360, 'color', [0.0 1.0 1.0], 'linestyle', '-', 'marker', 'o')
plot(velocity270, steering270, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity180, steering180, 'color', [1.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity90, steering90, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_90, steering_90, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_180, steering_180, 'color', [1.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_270, steering_270, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_360, steering_360, 'color', [0.0 1.0 1.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_450, steering_450, 'color', [1.0 0.0 1.0], 'linestyle', '-', 'marker', 'o')

xlabel('Velocity (m/s)')
ylabel('Lateral Acceleration (m/s^{2})')
title('Steering Speed-based Lateral Acceleration Map')
grid on
legend('450° steering', '360° steering', '270° steering', '180° steering', '90° steering',...
       '-90° steering', '-180° steering', '-270° steering', '-360° steering', '-450° steering')

   
%% If you want to add 0 vel and steering
velocity_450 = [0, velocity_450];
velocity_360 = [0, velocity_360];
velocity_270 = [0, velocity_270];
velocity_180 = [0, velocity_180];
velocity_90 = [0, velocity_90];
velocity90 = [0, velocity90];
velocity180 = [0, velocity180];
velocity270 = [0, velocity270];
velocity360 = [0, velocity360];
velocity450 = [0, velocity450];

steering_450 = [0, steering_450];
steering_360 = [0, steering_360];
steering_270 = [0, steering_270];
steering_180 = [0, steering_180];
steering_90 = [0, steering_90];
steering90 = [0, steering90];
steering180 = [0, steering180];
steering270= [0, steering270];
steering360 = [0, steering360];
steering450 = [0, steering450];

lat_vel_450 = [0, lat_vel_450];
lat_vel_360 = [0, lat_vel_360];
lat_vel_270 = [0, lat_vel_270];
lat_vel_180 = [0, lat_vel_180];
lat_vel_90 = [0, lat_vel_90];
lat_vel90 = [0, lat_vel90];
lat_vel180 = [0, lat_vel180];
lat_vel270 = [0, lat_vel270];
lat_vel360 = [0, lat_vel360];
lat_vel450 = [0, lat_vel450];

   
%% 3D Plotting Stuff
speed = [velocity_450, velocity_360, velocity_270, velocity_180, velocity_90,... 
         velocity90, velocity180, velocity270, velocity360, velocity450];
        
lateral_acceleration = [steering_450, steering_360, steering_270, steering_180, steering_90,...
                        steering90, steering180, steering270, steering360, steering450];

lateral_velocity = [lat_vel_450, lat_vel_360, lat_vel_270, lat_vel_180, lat_vel_90,...
                        lat_vel90, lat_vel180, lat_vel270, lat_vel360, lat_vel450];

sw_450 = -450*ones(size(steering_450));
sw_360 = -360*ones(size(steering_360));
sw_270 = -270*ones(size(steering_270));
sw_180 = -180*ones(size(steering_180));
sw_90 = -90*ones(size(steering_90));
sw450 = 450*ones(size(steering450));
sw360 = 360*ones(size(steering360));
sw270 = 270*ones(size(steering270));
sw180 = 180*ones(size(steering180));
sw90 = 90*ones(size(steering90));

steering_wheel_angles = [sw_450, sw_360, sw_270, sw_180, sw_90, sw90, sw180, sw270, sw360, sw450];

steering_wheel_angles_rad = pi/180 * steering_wheel_angles;

road_wheel_angles_rad = steering_wheel_angles_rad/12.5;

road_wheel_angles_deg = steering_wheel_angles/12.5;
lateralDynamics (speed, road_wheel_angles_rad, lateral_acceleration)
lateralVelocity (speed, road_wheel_angles_rad, lateral_velocity)
road_feedforward_vel (speed, lateral_velocity, road_wheel_angles_rad)
road_feedforward (speed, lateral_acceleration, road_wheel_angles_rad)
cftool
