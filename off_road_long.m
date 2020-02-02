close all; clear all; clc;

order = 3;      % order of sgolay filter
framelen = 51;  % window size of sgolay filter
minlen = 10;    % takes the amount of minimum values
startmin = 2;
endmin = 7;

%% 10% Throttle
% 5mph
inFile = 'throttle_10_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle5mph = mean(filtered_la(565:570,:));

inFile = 'throttle_10_5mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle5mph_2 = mean(filtered_la(530:535,:));

inFile = 'throttle_10_5mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle5mph_3 = mean(filtered_la(386:391,:));

inFile = 'throttle_10_5mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle5mph_4 = mean(sort_filtered_data(startmin:endmin,:));

throttle5mph_ave = mean([throttle5mph, throttle5mph_2, throttle5mph_3, throttle5mph_4])

% 10mph
inFile = 'throttle_10_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_10_10mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph_2 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_10_10mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph_3 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_10_10mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph_4 = mean(sort_filtered_data(startmin:endmin,:));

throttle10mph_ave = mean([throttle10mph, throttle10mph_2, throttle10mph_3, throttle10mph_4])

velocity10 = [2.2352, 4.4704];
acceleration10 = [throttle5mph_ave, throttle10mph_ave]%, throttle15mph, throttle20mph, throttle25mph];

%% 20% throttle
% 5mph
inFile = 'throttle_20_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_5mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle5mph_2 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_5mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle5mph_3 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_5mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle5mph_4 = mean(sort_filtered_data(startmin:endmin,:));

throttle5mph_ave = mean([throttle5mph, throttle5mph_2, throttle5mph_3, throttle5mph_4])

% 10mph
inFile = 'throttle_20_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_10mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph_2 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_10mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph_3 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_10mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph_4 = mean(sort_filtered_data(startmin:endmin,:));

throttle10mph_ave = mean([throttle10mph, throttle10mph_2, throttle10mph_3, throttle10mph_4])
