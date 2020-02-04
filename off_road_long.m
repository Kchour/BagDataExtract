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

throttle5mph_4 = mean(filtered_la(706:711,:));

throttle5mph_ave = mean([throttle5mph, throttle5mph_2, throttle5mph_3, throttle5mph_4]);

% 10mph
inFile = 'throttle_10_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle10mph = mean(filtered_la(874:879,:));

inFile = 'throttle_10_10mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle10mph_2 = mean(filtered_la(1353:1358,:));

inFile = 'throttle_10_10mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle10mph_3 = mean(filtered_la(725:730,:));

inFile = 'throttle_10_10mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle10mph_4 = mean(filtered_la(730:735,:));

throttle10mph_ave = mean([throttle10mph, throttle10mph_2, throttle10mph_3, throttle10mph_4]);

% 15mph
inFile = 'throttle_10_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle15mph = mean(filtered_la(1058:1063,:));

inFile = 'throttle_10_15mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle15mph_2 = mean(filtered_la(905:910,:));

inFile = 'throttle_10_15mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle15mph_3 = mean(filtered_la(791:796,:));

inFile = 'throttle_10_15mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle15mph_4 = mean(filtered_la(743:748,:));

throttle15mph_ave = mean([throttle15mph, throttle15mph_2, throttle15mph_3, throttle15mph_4]);

% 20mph
inFile = 'throttle_10_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle20mph = mean(filtered_la(1080:1085,:));

inFile = 'throttle_10_20mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle20mph_2 = mean(filtered_la(1101:1106,:));

inFile = 'throttle_10_20mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle20mph_3 = mean(filtered_la(958:963,:));

inFile = 'throttle_10_20mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle20mph_4 = mean(filtered_la(905:910,:));

throttle20mph_ave = mean([throttle20mph, throttle20mph_2, throttle20mph_3, throttle20mph_4]);

velocity10 = [2.2352, 4.4704, 6.7056, 8.9408];
acceleration10 = [throttle5mph_ave, throttle10mph_ave, throttle15mph_ave, throttle20mph_ave]%, throttle25mph_ave];

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

throttle5mph_ave = mean([throttle5mph, throttle5mph_2, throttle5mph_3, throttle5mph_4]);

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

throttle10mph_ave = mean([throttle10mph, throttle10mph_2, throttle10mph_3, throttle10mph_4]);

% 15mph
inFile = 'throttle_20_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_15mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle15mph_2 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_15mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle15mph_3 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_15mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle15mph_4 = mean(sort_filtered_data(startmin:endmin,:));

throttle15mph_ave = mean([throttle15mph, throttle15mph_2, throttle15mph_3, throttle15mph_4]);

% 20mph
inFile = 'throttle_20_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_20mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle20mph_2 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_20mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle20mph_3 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_20_20mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle20mph_4 = mean(sort_filtered_data(startmin:endmin,:));

throttle20mph_ave = mean([throttle20mph, throttle20mph_2, throttle20mph_3, throttle20mph_4]);

velocity20 = [2.2352, 4.4704, 6.7056, 8.9408];
acceleration20 = [throttle5mph_ave, throttle10mph_ave, throttle15mph_ave, throttle20mph_ave]%, throttle25mph_ave];

%% 20% throttle
% 5mph
inFile = 'throttle_30_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_5mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle5mph_2 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_5mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle5mph_3 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_5mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle5mph_4 = mean(sort_filtered_data(startmin:endmin,:));

throttle5mph_ave = mean([throttle5mph, throttle5mph_2, throttle5mph_3, throttle5mph_4]);

% 10mph
inFile = 'throttle_30_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_10mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph_2 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_10mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph_3 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_10mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle10mph_4 = mean(sort_filtered_data(startmin:endmin,:));

throttle10mph_ave = mean([throttle10mph, throttle10mph_2, throttle10mph_3, throttle10mph_4]);

% 15mph
inFile = 'throttle_30_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_15mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle15mph_2 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_15mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle15mph_3 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_15mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle15mph_4 = mean(sort_filtered_data(startmin:endmin,:));

throttle15mph_ave = mean([throttle15mph, throttle15mph_2, throttle15mph_3, throttle15mph_4]);

% 20mph
inFile = 'throttle_30_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_20mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle20mph_2 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_20mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle20mph_3 = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_30_20mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle20mph_4 = mean(sort_filtered_data(startmin:endmin,:));

throttle20mph_ave = mean([throttle20mph, throttle20mph_2, throttle20mph_3, throttle20mph_4]);

velocity30 = [2.2352, 4.4704, 6.7056, 8.9408];
acceleration30 = [throttle5mph_ave, throttle10mph_ave, throttle15mph_ave, throttle20mph_ave]%, throttle25mph_ave];



