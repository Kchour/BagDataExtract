close all; clear all; clc;

order = 3;      % order of sgolay filter
framelen = 51;  % window size of sgolay filter
minlen = 10;    % takes the amount of minimum values
startmin = 5;
endmin = 10;

%% Acceleration Data For Variety of velocities for 10% Throttle
velocity = [0, 2.456798, 4.315649, 7.037988, 9.137847, 11.491758 ];  % m/s

throttle0mph = 0;

inFile = 'throttle_10_5mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(1202:1207,2));

inFile = 'throttle_10_10mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(2303:2308,2));

inFile = 'throttle_10_15mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(1531:1536,2));

inFile = 'throttle_10_20mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(1143:1148,2));

inFile = 'throttle_10_25mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(1880:1885,2));

acceleration10 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

figure(10)
plot(velocity, acceleration10, 'color', [1.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
xlabel('Velocity (m/s)')
ylabel('Acceleration (m/s^2)')
title('Work Mode Throttle Speed-based Acceleration Map')
hold on
%% Acceleration Data For Variety of velocities for 20% Throttle
velocity = [0, 2.311975, 4.444239, 7.032863, 9.090789, 11.537264 ];  % m/s

throttle0mph = 0;

inFile = 'throttle_20_5mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(1373:1378,2));

inFile = 'throttle_20_10mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(1770:1775,2));

inFile = 'throttle_20_15mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(1536:1541,2));

inFile = 'throttle_20_20mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(1633:1638,2));

inFile = 'throttle_20_25mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(1607:1612,2));

acceleration20 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity, acceleration20, 'color', [0.7 0.4 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 30% Throttle
velocity = [0, 2.553675, 4.835632, 6.742623, 8.938421, 11.608050 ];  % m/s

throttle0mph = 0;

inFile = 'throttle_30_5mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(990:995,2));

inFile = 'throttle_30_10mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(1386:1391,2));

inFile = 'throttle_30_15mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(897:902,2));

inFile = 'throttle_30_20mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(1739:1744,2));

inFile = 'throttle_30_25mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(1395:1400,2));

acceleration30 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity, acceleration30, 'color', [0.7 0.7 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 40% Throttle
velocity = [0, 2.407849, 4.528014, 6.851334, 9.089426, 11.368424 ];  % m/s

inFile = 'throttle_40_0mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_40_5mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(1373:1383,2));

inFile = 'throttle_40_10mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(1842:1847,2));

inFile = 'throttle_40_15mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(1521:1526,2));

inFile = 'throttle_40_20mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(1024:1029,2));

inFile = 'throttle_40_25mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(1654:1659,2));

acceleration40 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity, acceleration40, 'color', [0.0 0.7 0.5], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 50% Throttle
velocity = [0, 2.644230 , 4.267167, 6.774328, 8.937472, 11.229550];  % m/s

inFile = 'throttle_50_0mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_50_5mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(959:964,2));

inFile = 'throttle_50_10mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(1742:1747,2));

inFile = 'throttle_50_15mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(1232:1237,2));

inFile = 'throttle_50_20mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(1445:1450,2));

inFile = 'throttle_50_25mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(1647:1652,2));

acceleration50 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity, acceleration50, 'color', [0.0 0.0 1.0], 'linestyle', '-', 'marker', 'o')


%% Acceleration Data For Variety of velocities for 60% Throttle
velocity = [0, 2.424389 , 4.528993, 6.844889, 8.954663, 11.076322];  % m/s

inFile = 'throttle_60_0mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_60_5mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(1837:1842,2));

inFile = 'throttle_60_10mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(1393:1398,2));

inFile = 'throttle_60_15mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(1222:1227,2));

inFile = 'throttle_60_20mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(1951:1956,2));

inFile = 'throttle_60_25mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(1280:1285,2));

acceleration60 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity, acceleration60, 'color', [0.5 0.0 0.7], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 70% Throttle
velocity = [0, 2.800798, 4.319832, 6.920874, 8.778554, 11.174409 ];  % m/s

inFile = 'throttle_70_0mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
sort_filtered_data = sort(filtered_la, 'descend');

throttle0mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'throttle_70_5mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle5mph = mean(filtered_la_time(2422:2427,2));

inFile = 'throttle_70_10mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle10mph = mean(filtered_la_time(1769:1774,2));

inFile = 'throttle_70_15mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle15mph = mean(filtered_la_time(1430:1435,2));

inFile = 'throttle_70_20mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle20mph = mean(filtered_la_time(2196:2201,2));

inFile = 'throttle_70_25mph_work/_vectornav_veltest_msg.data.txt';
data = load(inFile, '-ascii');
linear_acceleration = gradient(data(:,2),0.02);
filtered_la = sgolayfilt(linear_acceleration(:,1),order,framelen);
filtered_la_time = [data(:,1), filtered_la(:,1)];

throttle25mph = mean(filtered_la_time(1590:1595,2));

acceleration70 = [throttle0mph, throttle5mph, throttle10mph, throttle15mph, throttle20mph, throttle25mph];

plot(velocity, acceleration70, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')

grid on
legend('10% Throttle', '20% Throttle', '30% Throttle', '40% Throttle', '50% Throttle',...
    '60% Throttle', '70% Throttle')