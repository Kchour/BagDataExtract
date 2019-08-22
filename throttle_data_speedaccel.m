close all; clear all; clc;

order = 3;      % order of sgolay filter
framelen = 51;  % window size of sgolay filter
minlen = 10;    % takes the amount of minimum values
startmin = 5;
endmin = 10;

%% Acceleration Data For Variety of velocities for 30% Throttle
velocity = [0, 2.553675, 4.835632, 6.742623, 8.938421, 11.608050 ];  % m/s

inFile = 'throttle_30_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

% inFile = 'throttle_30_0mph2/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% linear_acceleration = gradient(data(:,2),0.02);
% filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
% sort_filtered_data = sort(filtered_la, 'descend');
% 
% throttle0mph2 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(990:995,2));

inFile = 'throttle_30_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(1386:1391,2));

inFile = 'throttle_30_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(897:902,2));

inFile = 'throttle_30_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(1739:1744,2));

inFile = 'throttle_30_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(1395:1400,2));

acceleration30 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

figure(10)
plot(velocity, acceleration30, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
xlabel('Velocity (m/s)')
ylabel('Acceleration (m/s^2)')
title('Throttle Speed-based Acceleration Map')
hold on

%% Acceleration Data For Variety of velocities for 35% Throttle
velocity = [0];  % m/s

inFile = 'throttle_35_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration35 = [throttle0mph];

plot(velocity, acceleration35, 'color', [1 0.0 0.0], 'linestyle', '-', 'marker', 'o')


%% Acceleration Data For Variety of velocities for 40% Throttle
velocity = [0, 2.407849, 4.528014, 6.851334, 9.089426, 11.368424 ];  % m/s

inFile = 'throttle_40_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

% inFile = 'throttle_40_0mph2/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% linear_acceleration = gradient(data(:,2),0.02);
% filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
% sort_filtered_data = sort(filtered_la, 'descend');
% 
% throttle0mph2 = mean(sort_filtered_data(startmin:endmin,:))

inFile = 'throttle_40_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(1373:1383,2));

inFile = 'throttle_40_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(1842:1847,2));

inFile = 'throttle_40_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(1521:1526,2));

inFile = 'throttle_40_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(1024:1029,2));

inFile = 'throttle_40_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(1654:1659,2));

acceleration40 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity, acceleration40, 'color', [0.75 0.0 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 45% Throttle
velocity = [0];  % m/s

inFile = 'throttle_45_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration45 = [throttle0mph];

plot(velocity, acceleration45, 'color', [0.45 0 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 50% Throttle
velocity = [0];  % m/s

inFile = 'throttle_50_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

% inFile = 'throttle_50_0mph2/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% linear_acceleration = gradient(data(:,2),0.02);
% filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
% sort_filtered_data = sort(filtered_la, 'descend');
% 
% throttle0mph2 = mean(sort_filtered_data(startmin:endmin,:))

acceleration50 = [throttle0mph];

plot(velocity, acceleration50, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 55% Throttle
velocity = [0];  % m/s

inFile = 'throttle_55_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration55 = [throttle0mph];

plot(velocity, acceleration55, 'color', [0.0 0.75 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 60% Throttle
velocity = [0];  % m/s

inFile = 'throttle_60_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

% inFile = 'throttle_60_0mph2/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% linear_acceleration = gradient(data(:,2),0.02);
% filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
% sort_filtered_data = sort(filtered_la, 'descend');
% 
% throttle0mph2 = mean(sort_filtered_data(startmin:endmin,:));

acceleration60 = [throttle0mph];

plot(velocity, acceleration60, 'color', [0.0 0.45 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 65% Throttle
velocity = [0];  % m/s

inFile = 'throttle_65_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration65 = [throttle0mph];

plot(velocity, acceleration65, 'color', [0.0 0.0 1.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 70% Throttle
velocity = [0];  % m/s

inFile = 'throttle_70_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

% inFile = 'throttle_70_0mph2/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% linear_acceleration = gradient(data(:,2),0.02);
% filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
% sort_filtered_data = sort(filtered_la, 'descend');
% 
% throttle0mph2 = mean(sort_filtered_data(startmin:endmin,:));

acceleration70 = [throttle0mph];

plot(velocity, acceleration70, 'color', [0.0 0.0 0.75], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 75% Throttle
velocity = [0];  % m/s

inFile = 'throttle_75_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration75 = [throttle0mph];

plot(velocity, acceleration75, 'color', [0.0 0.0 0.45], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 80% Throttle
velocity = [0];  % m/s

inFile = 'throttle_80_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration80 = [throttle0mph];

plot(velocity, acceleration80, 'color', [1.0 0.0 1.0], 'linestyle', '-', 'marker', 'o')

grid on
legend('30% Throttle', '35% Throttle', '40% Throttle', '45% Throttle', '50% Throttle', '55% Throttle',...
    '60% Throttle', '65% Throttle', '70% Throttle', '75% Throttle', '80% Throttle')