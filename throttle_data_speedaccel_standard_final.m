close all; clear all; clc;

order = 3;      % order of sgolay filter
framelen = 51;  % window size of sgolay filter
minlen = 10;    % takes the amount of minimum values
startmin = 2;
endmin = 7;

%% Acceleration Data For Variety of velocities for 0% Throttle and 0% Brake
velocity0 = [2.123705, 4.469851, 6.704146, 8.632719, 11.077284 ];  % m/s

throttle0mph = 0;

inFile = 'brake_0_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_0_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_0_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_0_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_0_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle25mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration0 = [throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

figure(10)
plot(velocity0, acceleration0, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
xlabel('Velocity (m/s)')
ylabel('Acceleration (m/s^2)')
title('Throttle Speed-based Acceleration Map')
hold on

%% Acceleration Data For Variety of velocities for 10% Throttle
velocity10 = [2.150568, 4.610507, 6.883732, 8.903720, 11.732343 ];  % m/s

throttle0mph = 0;
% inFile = 'throttle_10_0mph_standard/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% linear_acceleration = gradient(data(:,2),0.02);
% filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
% sort_filtered_data = sort(filtered_la, 'descend');
% 
% throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_10_5mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_10_10mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_10_15mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_10_20mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_10_25mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle25mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration10 = [throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity10, acceleration10, 'color', [1.0 0.0 0.6], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 20% Throttle
velocity20 = [2.205543, 5.029780, 7.124045, 9.092222, 11.470508 ];  % m/s

throttle0mph = 0;

inFile = 'throttle_20_5mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_10mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_15mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_20mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_25mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle25mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration20 = [throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity20, acceleration20, 'color', [1.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 30% Throttle
velocity30 = [0, 2.362592, 4.925583, 7.163329, 8.825783, 11.752511];  % m/s

inFile = 'throttle_30_0mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_5mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(1088:1093,2));

inFile = 'throttle_30_10mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(1025:1030,2));

inFile = 'throttle_30_15mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(1107:1112,2));

inFile = 'throttle_30_20mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(2128:2133,2));

inFile = 'throttle_30_25mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(1849:1854,2));

acceleration30 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity30, acceleration30, 'color', [0.75 0.5 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 40% Throttle
velocity40 = [0, 2.371269, 4.824105, 6.628682, 9.070034, 11.068345 ];  % m/s

inFile = 'throttle_40_0mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_40_5mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(890:895,2));

inFile = 'throttle_40_10mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(895:900,2));

inFile = 'throttle_40_15mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(1257:1262,2));

inFile = 'throttle_40_20mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(1522:1527,2));

inFile = 'throttle_40_25mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(1745:1750,2));

acceleration40 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity40, acceleration40, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 50% Throttle
velocity50 = [0, 2.395365, 4.821858, 7.038981, 9.072200, 11.473052 ];  % m/s

inFile = 'throttle_50_0mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_50_5mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(654:659,2));

inFile = 'throttle_50_10mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(1062:1067,2));

inFile = 'throttle_50_15mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(1273:1278,2));

inFile = 'throttle_50_20mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(1638:1643,2));

inFile = 'throttle_50_25mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(1795:1800,2));

acceleration50 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity50, acceleration50, 'color', [0.0 0.75 0.5], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 60% Throttle
velocity60 = [0, 2.062050, 4.561081, 7.045604, 8.905081, 11.361388 ];  % m/s

inFile = 'throttle_60_0mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_60_5mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(554:559,2));

inFile = 'throttle_60_10mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(1188:1193,2));

inFile = 'throttle_60_15mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(1112:1117,2));

inFile = 'throttle_60_20mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(2109:2114,2));

inFile = 'throttle_60_25mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(2098:2103,2));

acceleration60 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity60, acceleration60, 'color', [0.0 0.45 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 70% Throttle
velocity70 = [0, 2.514497, 4.568185, 6.805917, 9.146750, 11.353576 ];  % m/s

inFile = 'throttle_70_0mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_70_5mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(610:615,2));

inFile = 'throttle_70_10mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(1302:1307,2));

inFile = 'throttle_70_15mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(1422:1427,2));

inFile = 'throttle_70_20mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(1641:1646,2));

inFile = 'throttle_70_25mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(2210:2215,2));

acceleration70 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity70, acceleration70, 'color', [0.0 0.0 0.75], 'linestyle', '-', 'marker', 'o')

grid on
legend('0% Throttle','10% Throttle', '20% Throttle','30% Throttle', '40% Throttle', '50% Throttle',...
    '60% Throttle', '70% Throttle')


%% Calculating average velocities

% speed_5mph = mean([velocity0(2), velocity10(2), velocity20(2), velocity30(2), velocity40(2), velocity50(2),...
%                     velocity60(2), velocity60(2)])
%                 
% speed_10mph = mean([velocity0(3), velocity10(3), velocity20(3), velocity30(3), velocity40(3), velocity50(3),...
%                     velocity60(3), velocity60(3)])
%                 
% speed_15mph = mean([velocity0(4), velocity10(4), velocity20(4), velocity30(4), velocity40(4), velocity50(4),...
%                     velocity60(4), velocity60(4)])
%                 
% speed_20mph = mean([velocity0(5), velocity10(5), velocity20(5), velocity30(5), velocity40(5), velocity50(5),...
%                     velocity60(5), velocity60(5)])
%                 
% speed_25mph = mean([velocity0(6), velocity10(6), velocity20(6), velocity30(6), velocity40(6), velocity50(6),...
%                     velocity60(6), velocity60(6)])

%% Developing vectors for surface fitting
speed = [velocity0, velocity10, velocity20, velocity30, velocity40, velocity50, velocity60, velocity70];
acceleration = [acceleration0, acceleration10, acceleration20, acceleration30, acceleration40,...
                acceleration50, acceleration60, acceleration70];
throttle = [0, 0, 0, 0, 0, 10, 10, 10, 10, 10, 20, 20, 20, 20, 20, 30, 30, 30, 30, 30, 30,...
            40, 40, 40, 40, 40, 40, 50, 50, 50, 50, 50, 50, 60, 60, 60, 60, 60, 60, 70, 70, 70, 70, 70, 70];   
throttle1 = 0.01*throttle;

% createFit(speed, throttle, acceleration)
throttleDynamics(speed, throttle, acceleration)
cftool
