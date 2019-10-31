close all; clear all; clc;

order = 3;      % order of sgolay filter
framelen = 51;  % window size of sgolay filter
minlen = 10;    % takes the amount of minimum values
startmin = 2;
endmin = 7;

%% Acceleration Data For Variety of velocities for 0% Throttle and 0% Brake

throttle0mph = 0;
brake0mph = 0;

inFile = 'brake_0_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel5 = max(data(:,2));
brake5mph = mean(y(533:538,:));

inFile = 'brake_0_10mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel10 = max(data(:,2));
brake10mph = mean(y(744:749,:));

inFile = 'brake_0_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel15 = max(data(:,2));
brake15mph = mean(y(822:827,:));

inFile = 'brake_0_20mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel20 = max(data(:,2));
brake20mph = mean(y(750:755,:));

inFile = 'brake_0_25mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel25 = max(data(:,2));
brake25mph = mean(y(1315:1320,:));

velocity_brake0 = [vel5, vel10, vel15, vel20, vel25];  % m/s
acceleration0 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];


%% Acceleration Data For Variety of velocities for 10% Throttle
velocity10 = [ 2.150568, 4.610507, 6.883732, 8.903720, 11.732343 ];  % m/s

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

throttle5mph = mean(filtered_la(840:845,:));

inFile = 'throttle_10_10mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle10mph = mean(filtered_la(1353:1358,:));

inFile = 'throttle_10_15mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle15mph = mean(filtered_la(1355:1360,:));

inFile = 'throttle_10_20mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle20mph = mean(filtered_la(2820:2825,:));

inFile = 'throttle_10_25mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle25mph = mean(filtered_la(2030:2035,:));

acceleration10 = [ throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];


%% Acceleration Data For Variety of velocities for 20% Throttle
velocity20 = [ 2.205543, 5.029780, 7.124045, 9.092222, 11.470508 ];  % m/s

throttle0mph = 0;

inFile = 'throttle_20_5mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle5mph = mean(filtered_la(1025:1030,:));

inFile = 'throttle_20_10mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle10mph = mean(filtered_la(1482:1487,:));

inFile = 'throttle_20_15mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle15mph = mean(filtered_la(1349:1354,:));

inFile = 'throttle_20_20mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);

throttle20mph = mean(filtered_la(1318:1323,:))

inFile = 'throttle_20_25mph_standard/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la);

throttle25mph = mean(filtered_la(1880:1885,:))

acceleration20 = [throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];


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


%% Acceleration Data For Variety of velocities for 10% Brake 

inFile = 'brake_10_2mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel2 = max(data(:,2));
brake2mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_10_5mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel5 = max(data(:,2));
brake5mph = mean(y(371:376,:));

inFile = 'brake_10_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel10 = max(data(:,2));
brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_10_15mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel15 = max(data(:,2));
brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_10_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel20 = max(data(:,2));
brake20mph = mean(y(1010:1015,:));

inFile = 'brake_10_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel25 = max(data(:,2));
brake25mph = mean(y(1015:1020,:));

velocity_brake10 = [vel5, vel10, vel15, vel20, vel25];  % m/s
acceleration_brake10 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];

%% Acceleration Data For Variety of velocities for 20% Brake 

inFile = 'brake_20_2mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel2 = max(data(:,2));
brake2mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_20_5mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel5 = max(data(:,2));
brake5mph = mean(y(187:192,:));

inFile = 'brake_20_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel10 = max(data(:,2));
brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_20_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel15 = max(data(:,2));
brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_20_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel20 = max(data(:,2));
brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_20_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel25 = max(data(:,2));
brake25mph = mean(y(700:705,:));

velocity_brake20 = [vel5, vel10, vel15, vel20, vel25];  % m/s
acceleration_brake20 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];

%% Acceleration Data For Variety of velocities for 30% Brake 

inFile = 'brake_30_2mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel2 = max(data(:,2));
brake2mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_30_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel5 = max(data(:,2));
brake5mph = mean(y(222:227,:));

inFile = 'brake_30_10mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel10 = max(data(:,2));
brake10mph = mean(y(557:562,:));

inFile = 'brake_30_15mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel15 = max(data(:,2));
brake15mph = mean(y(645:650,:));

inFile = 'brake_30_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel20 = max(data(:,2));
brake20mph = mean(y(860:865,:));

inFile = 'brake_30_25mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel25 = max(data(:,2));
brake25mph = mean(y(1240:1245,:));


velocity_brake30 = [vel5, vel10, vel15, vel20, vel25];  % m/s
acceleration_brake30 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];

%% Acceleration Data For Variety of velocities for 40% Brake

inFile = 'brake_40_2mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel2 = max(data(:,2));
brake2mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_40_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel5 = max(data(:,2));
brake5mph = mean(y(303:308,:));

inFile = 'brake_40_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel10 = max(data(:,2));
brake10mph = mean(y(583:588,:));

inFile = 'brake_40_15mph_4/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y3 = sgolayfilt(filtered_data(:,1),order,framelen);

vel15 = max(data(:,2));
brake15mph = mean(y(613:618,:));

inFile = 'brake_40_20mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel20 = max(data(:,2));
brake20mph = mean(y(1030:1035,:));

inFile = 'brake_40_25mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel25 = max(data(:,2));
brake25mph = mean(y(1160:1165,:));

velocity_brake40 = [vel5, vel10, vel15, vel20, vel25];  % m/s
acceleration_brake40 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];
%% Acceleration Data For Variety of velocities for 50% Brake 

inFile = 'brake_50_2mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel2 = max(data(:,2));
brake2mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_50_5mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y= sgolayfilt(filtered_data(:,1),order,framelen);

vel5 = max(data(:,2));
brake5mph = mean(y(256:261,:));

inFile = 'brake_50_10mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel10 = max(data(:,2));
brake10mph = mean(y(435:440,:));

inFile = 'brake_50_15mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel15 = max(data(:,2));
brake15mph = mean(y(631:636,:));

inFile = 'brake_50_20mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel20 = max(data(:,2));
brake20mph = mean(y(941:946,:));

inFile = 'brake_50_25mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel25 = max(data(:,2));
brake25mph = mean(y(770:775,:));

velocity_brake50 = [vel5, vel10, vel15, vel20, vel25];  % m/s
acceleration_brake50 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];

%% Acceleration Data For Variety of velocities for 60% Brake 

inFile = 'brake_60_2mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel2 = max(data(:,2));
brake2mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_60_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel5 = max(data(:,2));
brake5mph = mean(y(328:338,:));

inFile = 'brake_60_10mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel10 = max(data(:,2));
brake10mph = mean(y(559:564,:));

inFile = 'brake_60_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel15 = max(data(:,2));
brake15mph = mean(y(576:581,:));

inFile = 'brake_60_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel20 = max(data(:,2));
brake20mph = mean(y(828:833,:));

inFile = 'brake_60_25mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel25 = max(data(:,2));
brake25mph = mean(y(990:995,:));

velocity_brake60 = [vel5, vel10, vel15, vel20, vel25];  % m/s
acceleration_brake60 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];

%% Acceleration Data For Variety of velocities for 70% Brake 

inFile = 'brake_70_2mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel2 = max(data(:,2));
brake2mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_70_5mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel5 = max(data(:,2));
brake5mph = mean(y(279:284,:));

inFile = 'brake_70_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel10 = max(data(:,2));
brake10mph = mean(y(361:366,:));

inFile = 'brake_70_15mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel15 = max(data(:,2));
brake15mph = mean(y(625:630,:));

inFile = 'brake_70_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel20 = max(data(:,2));
brake20mph = mean(y(715:720,:));

inFile = 'brake_70_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel25 = max(data(:,2));
brake25mph = mean(y(725:730,:));

velocity_brake70 = [vel5, vel10, vel15, vel20, vel25];  % m/s
acceleration_brake70 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];

%% Acceleration Data For Variety of velocities for 80% Brake 

inFile = 'brake_80_2mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel2 = max(data(:,2));
brake2mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_80_5mph_3/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel5 = max(data(:,2));
brake5mph = mean(y(379:384,:));

inFile = 'brake_80_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel10 = max(data(:,2));
brake10mph = mean(y(628:633,:));

inFile = 'brake_80_15mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel15 = max(data(:,2));
brake15mph = mean(y(773:778,:));

inFile = 'brake_80_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel20 = max(data(:,2));
brake20mph = mean(y(974:979,:));

inFile = 'brake_80_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel25 = max(data(:,2));
brake25mph = mean(y(925:930,:));

velocity_brake80 = [vel5, vel10, vel15, vel20, vel25];  % m/s
acceleration_brake80 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];

%% Acceleration Data For Variety of velocities for 90% Brake 

inFile = 'brake_90_2mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel2 = max(data(:,2));
brake2mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_90_5mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel5 = max(data(:,2));
brake5mph = mean(y(343:348,:));

inFile = 'brake_90_10mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel10 = max(data(:,2));
brake10mph = mean(y(783:788,:));

inFile = 'brake_90_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel15 = max(data(:,2));
brake15mph = mean(y(668:673,:));

inFile = 'brake_90_20mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel20 = max(data(:,2));
brake20mph = mean(y(1016:1021));

inFile = 'brake_90_25mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel25 = max(data(:,2));
brake25mph = mean(y(1000:1005,:));

velocity_brake90 = [vel5, vel10, vel15, vel20, vel25];  % m/s
acceleration_brake90 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];

%% Acceleration Data For Variety of velocities for 100% Brake 

inFile = 'brake_100_2mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

vel2 = max(data(:,2));
brake2mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_100_5mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel5 = max(data(:,2));
brake5mph = mean(y(295:300,:));

inFile = 'brake_100_10mph_2/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel10 = max(data(:,2));
brake10mph = mean(y(1091:1096,:));

inFile = 'brake_100_15mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel15 = max(data(:,2));
brake15mph = mean(y(1555:1560,:));

inFile = 'brake_100_20mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel20 = max(data(:,2));
brake20mph = mean(y(1182:1187,:));

inFile = 'brake_100_25mph/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);

vel25 = max(data(:,2));
brake25mph = mean(y(1598:1603,:));

velocity_brake100 = [vel5, vel10, vel15, vel20, vel25];  % m/s
acceleration_brake100 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];


%% Graphing everything now
figure(10)
xlabel('Velocity (m/s)')
ylabel('Acceleration (m/s^2)')
title('Speed-based Acceleration Map')
hold on

plot(velocity_brake0, acceleration0, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity10, acceleration10, 'color', [1.0 0.0 0.6], 'linestyle', '-', 'marker', 'o')
plot(velocity20, acceleration20, 'color', [1.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity30, acceleration30, 'color', [0.75 0.5 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity40, acceleration40, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity50, acceleration50, 'color', [0.0 0.75 0.5], 'linestyle', '-', 'marker', 'o')
plot(velocity60, acceleration60, 'color', [0.0 0.45 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity70, acceleration70, 'color', [0.0 0.0 0.75], 'linestyle', '-', 'marker', 'o')

plot(velocity_brake10, acceleration_brake10, 'color', [0.5764 0.0 0.0], 'linestyle', '-', 'marker', 'o')
%plot(velocity_brake20, acceleration_brake20, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_brake30, acceleration_brake30, 'color', [0.0 0.5647 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_brake40, acceleration_brake40, 'color', [1 0.5 0.5], 'linestyle', '-', 'marker', 'o')
plot(velocity_brake50, acceleration_brake50, 'color', [1 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_brake60, acceleration_brake60, 'color', [0.5764 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_brake70, acceleration_brake70, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_brake80, acceleration_brake80, 'color', [0.0 0.5647 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_brake90, acceleration_brake90, 'color', [0 0.0 1.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_brake100, acceleration_brake100, 'color', [0 0.7490 1.0], 'linestyle', '-', 'marker', 'o')



grid on
legend('0% Throttle','10% Throttle', '20% Throttle','30% Throttle', '40% Throttle', '50% Throttle',...
    '60% Throttle', '70% Throttle', '10% Brake', '30% Brake','40% Brake','50% Brake','60% Brake',...
    '70% Brake','80% Brake','90% Brake','100% Brake')




%% Calculating average velocities

% speed_5mph = mean([velocity0(2), velocity10(2), velocity20(2), velocity30(2), velocity40(2), velocity50(2),...
%                     velocity60(2), velocity60(2)]);
%                 
% speed_10mph = mean([velocity0(3), velocity10(3), velocity20(3), velocity30(3), velocity40(3), velocity50(3),...
%                     velocity60(3), velocity60(3)]);
%                 
% speed_15mph = mean([velocity0(4), velocity10(4), velocity20(4), velocity30(4), velocity40(4), velocity50(4),...
%                     velocity60(4), velocity60(4)]);
%                 
% speed_20mph = mean([velocity0(5), velocity10(5), velocity20(5), velocity30(5), velocity40(5), velocity50(5),...
%                     velocity60(5), velocity60(5)]);
%                 
% speed_25mph = mean([velocity0(6), velocity10(6), velocity20(6), velocity30(6), velocity40(6), velocity50(6),...
%                     velocity60(6), velocity60(6)]);

%% Developing vectors for surface fitting
speed = [velocity_brake100, velocity_brake90, velocity_brake80, velocity_brake70, velocity_brake60, velocity_brake50, ...
        velocity_brake40, velocity_brake30, velocity_brake10, velocity_brake0, velocity10, velocity20, velocity30, ...
        velocity40, velocity50, velocity60, velocity70];
acceleration = [acceleration_brake100, acceleration_brake90, acceleration_brake80, acceleration_brake70, ...
                acceleration_brake60, acceleration_brake50, acceleration_brake40, acceleration_brake30,...
                acceleration_brake10, acceleration0, acceleration10, acceleration20,... 
                acceleration30, acceleration40, acceleration50, acceleration60, acceleration70];
% throttle = [0, 0, 0, 0, 0, 0, 10, 10, 10, 10, 10, 10, 20, 20, 20, 20, 20, 20, 30, 30, 30, 30, 30, 30,...
%             40, 40, 40, 40, 40, 40, 50, 50, 50, 50, 50, 50, 60, 60, 60, 60, 60, 60, 70, 70, 70, 70, 70, 70];   
% throttle1 = 0.01*throttle;

brake0 = 0*ones(size(acceleration0));
brake10 = -10*ones(size(acceleration_brake10));
brake20 = -20*ones(size(acceleration_brake20));
brake30 = -30*ones(size(acceleration_brake30));
brake40 = -40*ones(size(acceleration_brake40));
brake50 = -50*ones(size(acceleration_brake50));
brake60 = -60*ones(size(acceleration_brake60));
brake70 = -70*ones(size(acceleration_brake70));
brake80 = -80*ones(size(acceleration_brake80));
brake90 = -90*ones(size(acceleration_brake90));
brake100 = -100*ones(size(acceleration_brake100));

throttle10 = 10*ones(size(acceleration10));
throttle20 = 20*ones(size(acceleration20));
throttle30 = 30*ones(size(acceleration30));
throttle40 = 40*ones(size(acceleration40));
throttle50 = 50*ones(size(acceleration50));
throttle60 = 60*ones(size(acceleration60));
throttle70 = 70*ones(size(acceleration70));


input = [ brake100, brake90, brake80, brake70, brake60, brake50, brake40, brake30, brake10, brake0,...
          throttle10, throttle20, throttle30, throttle40, throttle50, throttle60, throttle70]; 
input1 = input*0.01;

dynamics(speed, input1, acceleration)
combined_inverse(speed, acceleration, input1)
cftool
