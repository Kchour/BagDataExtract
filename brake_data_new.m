close all; clear all; clc;

order = 3;      % order of sgolay filter
framelen = 51;  % window size of sgolay filter
minlen = 10;    % takes the amount of minimum values
startmin = 5;
endmin = 10;

%% Acceleration Data For Variety of velocities for 0% Brake 

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
brake5mph = mean(y(222:227,:))

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
y = sgolayfilt(filtered_data(:,1),order,framelen);;

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

%% Acceleration Data For Variety of velocities for 80% Brake 

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
%% 2D Plotting 

figure(1)
plot(velocity_brake0, acceleration0, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
hold on

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

xlabel('Velocity (m/s)')
ylabel('Acceleration (m/s^2)')
title('Braking Speed-based Acceleration Map')
grid on
legend('0% Brake','10% Brake','40% Brake','50% Brake',...
        '60% Brake','70% Brake','80% Brake','90% Brake', '100% Brake')

%% Developing vectors for surface fitting
speed = [velocity_brake0, velocity_brake10, velocity_brake30, velocity_brake40, velocity_brake50, velocity_brake60, velocity_brake70,...
        velocity_brake80, velocity_brake90, velocity_brake100];
acceleration = [acceleration0, acceleration_brake10, acceleration_brake30, acceleration_brake40, acceleration_brake50, ...
                acceleration_brake60, acceleration_brake70, acceleration_brake80, acceleration_brake90, acceleration_brake100];
            
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

brake = [brake0, brake10, brake30, brake40 brake50, brake60, brake70, brake80, brake90, brake100];
brake1 = 0.01*brake;


% speed1_5 = [velocity_brake0(1:5), velocity_brake50(1:5), velocity_brake60(1:5), velocity_brake70(1:5),...
%         velocity_brake80(1:5), velocity_brake90(1:5), velocity_brake100(1:5)];
% acceleration1_5 = [acceleration0(1:5), acceleration_brake50(1:5), acceleration_brake60(1:5), acceleration_brake70(1:5),...
%                 acceleration_brake80(1:5), acceleration_brake90(1:5), acceleration_brake100(1:5)];
% brake0 = 0*ones(size(acceleration0));
% brake40 = -40*ones(size(acceleration_brake40));
% brake50 = -50*ones(size(acceleration_brake50));
% brake60 = -60*ones(size(acceleration_brake60));
% brake70 = -70*ones(size(acceleration_brake70));
% brake80 = -80*ones(size(acceleration_brake80));
% brake90 = -90*ones(size(acceleration_brake90));
% brake100 = -100*ones(size(acceleration_brake100));
% 
% brake1_5 = [brake0(1:5), brake50(1:5), brake60(1:5), brake70(1:5), brake80(1:5), brake90(1:5), brake100(1:5)];
% brake1_5_1 = 0.01*brake1_5;
% 
% speed = [velocity_brake0, velocity_brake50, velocity_brake60, velocity_brake70,...
%         velocity_brake80, velocity_brake90, velocity_brake100];
% acceleration = [acceleration0, acceleration_brake50, acceleration_brake60, acceleration_brake70,...
%                 acceleration_brake80, acceleration_brake90, acceleration_brake100];
%          
% brake = [brake0, brake50, brake60, brake70, brake80, brake90, brake100];
% brake1 = 0.01*brake;

% createFit(speed, throttle, acceleration)

brakeDynamics(speed, brake1, acceleration)
brakeFeedforward(speed, acceleration, brake1)
cftool

