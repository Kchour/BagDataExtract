% close all; clear all; clc;

order = 3;      % order of sgolay filter
framelen = 31;  % window size of sgolay filter
minlen = 10;    % takes the amount of minimum values
startmin = 5;
endmin = 10;

%% Acceleration Data For Variety of velocities for 30% Throttle
velocity = [0];  % m/s

inFile = 'throttle_30_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

% inFile = 'brake_0_10mph/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% filtered_data = gradient(data(:,2),0.02);
% y = sgolayfilt(filtered_data(:,1),order,framelen);
% sort_filtered_data = sort(y);
% 
% brake10mph = mean(sort_filtered_data(startmin:endmin,:));
% 
% inFile = 'brake_0_15mph/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% filtered_data = gradient(data(:,2),0.02);
% y = sgolayfilt(filtered_data(:,1),order,framelen);
% sort_filtered_data = sort(y);
% 
% brake15mph = mean(sort_filtered_data(startmin:endmin,:));
% 
% inFile = 'brake_0_20mph/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% filtered_data = gradient(data(:,2),0.02);
% y = sgolayfilt(filtered_data(:,1),order,framelen);
% sort_filtered_data = sort(y);
% 
% brake20mph = mean(sort_filtered_data(startmin:endmin,:));
% 
% inFile = 'brake_0_25mph/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% filtered_data = gradient(data(:,2),0.02);
% y = sgolayfilt(filtered_data(:,1),order,framelen);
% sort_filtered_data = sort(y);
% 
% brake25mph = mean(sort_filtered_data(startmin:endmin,:));
% 
% inFile = 'brake_0_30mph/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% filtered_data = gradient(data(:,2),0.02);
% y = sgolayfilt(filtered_data(:,1),order,framelen);
% sort_filtered_data = sort(y);
% 
% brake30mph = mean(sort_filtered_data(startmin:endmin,:));
% 
% inFile = 'brake_0_35mph/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% filtered_data = gradient(data(:,2),0.02);
% y = sgolayfilt(filtered_data(:,1),order,framelen);
% sort_filtered_data = sort(y);
% 
% brake35mph = mean(sort_filtered_data(startmin:endmin,:));
% 
% inFile = 'brake_0_40mph/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% filtered_data = gradient(data(:,2),0.02);
% y = sgolayfilt(filtered_data(:,1),order,framelen);
% sort_filtered_data = sort(y);
% 
% brake40mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration30 = [throttle0mph];

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
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration35 = [throttle0mph];

plot(velocity, acceleration35, 'color', [1 0.0 0.0], 'linestyle', '-', 'marker', 'o')


%% Acceleration Data For Variety of velocities for 40% Throttle
velocity = [0];  % m/s

inFile = 'throttle_40_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration40 = [throttle0mph];

plot(velocity, acceleration40, 'color', [0.75 0.0 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 45% Throttle
velocity = [0];  % m/s

inFile = 'throttle_45_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration45 = [throttle0mph];

plot(velocity, acceleration45, 'color', [0.45 0 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 50% Throttle
velocity = [0];  % m/s

inFile = 'throttle_50_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration50 = [throttle0mph];

plot(velocity, acceleration50, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 55% Throttle
velocity = [0];  % m/s

inFile = 'throttle_55_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration55 = [throttle0mph];

plot(velocity, acceleration55, 'color', [0.0 0.75 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 60% Throttle
velocity = [0];  % m/s

inFile = 'throttle_60_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration60 = [throttle0mph];

plot(velocity, acceleration60, 'color', [0.0 0.45 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 65% Throttle
velocity = [0];  % m/s

inFile = 'throttle_65_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration65 = [throttle0mph];

plot(velocity, acceleration65, 'color', [0.0 0.0 1.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 70% Throttle
velocity = [0];  % m/s

inFile = 'throttle_70_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration70 = [throttle0mph];

plot(velocity, acceleration70, 'color', [0.0 0.0 0.75], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 75% Throttle
velocity = [0];  % m/s

inFile = 'throttle_75_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration75 = [throttle0mph];

plot(velocity, acceleration75, 'color', [0.0 0.0 0.45], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 80% Throttle
velocity = [0];  % m/s

inFile = 'throttle_80_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration80 = [throttle0mph];

plot(velocity, acceleration80, 'color', [1.0 0.0 1.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 85% Throttle
velocity = [0];  % m/s

inFile = 'throttle_85_0mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration85 = [throttle0mph];

plot(velocity, acceleration85, 'color', [0.75 0.0 0.75], 'linestyle', '-', 'marker', 'o')

legend('30% Throttle', '35% Throttle', '40% Throttle', '45% Throttle', '50% Throttle', '55% Throttle',...
    '60% Throttle', '65% Throttle', '70% Throttle', '75% Throttle', '80% Throttle', '85% Throttle')