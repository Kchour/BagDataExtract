close all; clear all; clc;

order = 3;      % order of sgolay filter
framelen = 51;  % window size of sgolay filter
minlen = 10;    % takes the amount of minimum values
startmin = 5;
endmin = 10;

%% Acceleration Data For Variety of velocities for 0% Brake 
velocity = [2.399589, 4.471362, 6.448318, 8.559670, 11.072673, 13.000194, 15.507926, 17.218624];  % m/s

inFile = 'brake_0_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_0_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_0_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_0_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_0_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_0_30mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake30mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_0_35mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake35mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_0_40mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake40mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration0 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

figure(1)
plot(velocity, acceleration0, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
xlabel('Velocity (m/s)')
ylabel('Acceleration (m/s^2)')
title('Braking Speed-based Acceleration Map')
grid on
hold on

%% Acceleration Data For Variety of velocities for 40% Brake 
velocity = [2.332692, 4.290472, 6.482032, 8.636277, 10.623586, 12.743763, 15.416848, 17.320083];  % m/s

inFile = 'brake_40_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_40_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_40_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_40_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_40_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_40_30mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake30mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_40_35mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake35mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_40_40mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake40mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration40 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration40, 'color', [1 0.5 0.5], 'linestyle', '-', 'marker', 'o')
%% Acceleration Data For Variety of velocities for 50% Brake 
velocity = [2.255553, 4.345825, 6.759151, 8.636277, 10.623586, 12.743763, 15.416848, 17.320083];  % m/s

inFile = 'brake_50_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_50_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_50_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_50_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_50_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_50_30mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake30mph = mean(sort_filtered_data(startmin:endmin,:));

% inFile = 'brake_50_30mph2/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% filtered_data = gradient(data(:,2),0.02);
% y = sgolayfilt(filtered_data(:,1),order,framelen);
% sort_filtered_data = sort(y);
% 
% brake30mph = mean(sort_filtered_data(startmin:endmin,:))

inFile = 'brake_50_35mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake35mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_50_40mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake40mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration50 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration50, 'color', [1 0.0 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 60% Brake 
velocity = [1.949396, 4.456033, 6.263209, 8.291727, 10.666364, 12.900174, 15.004222, 17.342080];  % m/s

inFile = 'brake_60_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_60_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_60_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_60_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_60_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_60_30mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake30mph = mean(sort_filtered_data(startmin:endmin,:));

% inFile = 'brake_60_30mph2/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% filtered_data = gradient(data(:,2),0.02);
% y = sgolayfilt(filtered_data(:,1),order,framelen);
% sort_filtered_data = sort(y);
% 
% brake30mph = mean(sort_filtered_data(startmin:endmin,:))

inFile = 'brake_60_35mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake35mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_60_40mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake40mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration60 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration60, 'color', [0.5764 0.0 0.0], 'linestyle', '-', 'marker', 'o')
%% Acceleration Data For Variety of velocities for 70% Brake 
velocity = [2.370531, 4.337160, 6.588608, 8.268588, 10.751820, 12.916797, 15.015370, 17.322462];  % m/s

inFile = 'brake_70_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_70_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_70_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_70_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_70_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_70_30mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake30mph = mean(sort_filtered_data(startmin:endmin,:));

% inFile = 'brake_70_30mph2/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% filtered_data = gradient(data(:,2),0.02);
% y = sgolayfilt(filtered_data(:,1),order,framelen);
% sort_filtered_data = sort(y);
% 
% brake30mph = mean(sort_filtered_data(startmin:endmin,:))

inFile = 'brake_70_35mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake35mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_70_40mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake40mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration70 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration70, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 80% Brake 
velocity = [2.103452, 4.275421, 6.515093, 8.560335, 10.620332, 13.058321, 15.060000, 17.381358];  % m/s

inFile = 'brake_80_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_80_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_80_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_80_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_80_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_80_30mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake30mph = mean(sort_filtered_data(startmin:endmin,:));

% inFile = 'brake_80_30mph2/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% filtered_data = gradient(data(:,2),0.02);
% y = sgolayfilt(filtered_data(:,1),order,framelen);
% sort_filtered_data = sort(y);
% 
% brake30mph = mean(sort_filtered_data(startmin:endmin,:))


inFile = 'brake_80_35mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake35mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_80_40mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake40mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration80 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration80, 'color', [0.0 0.5647 0.0], 'linestyle', '-', 'marker', 'o')
%% Acceleration Data For Variety of velocities for 90% Brake 
velocity = [2.103452, 4.229488, 6.698545, 8.387588, 10.684664, 12.880022, 15.219108, 17.439246];  % m/s

inFile = 'brake_90_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_90_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_90_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_90_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_90_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_90_30mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake30mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_90_35mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake35mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_90_40mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake40mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration90 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration90, 'color', [0 0.0 1.0], 'linestyle', '-', 'marker', 'o')
%% Acceleration Data For Variety of velocities for 100% Brake 
velocity = [1.928696, 4.471362, 6.240145, 8.445275, 10.433095, 12.800073, 15.110204, 17.132518];  % m/s

inFile = 'brake_100_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_100_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_100_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);
y2 = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data2 = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_100_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_100_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_100_30mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake30mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_100_35mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake35mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_100_40mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake40mph = mean(sort_filtered_data(startmin:endmin,:));


acceleration100 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration100, 'color', [0 0.7490 1.0], 'linestyle', '-', 'marker', 'o')
legend('0% Brake', '40% Brake', '50% Brake', '60% Brake','70% Brake','80% Brake','90% Brake','100% Brake')

%% 3D plotting stuff
