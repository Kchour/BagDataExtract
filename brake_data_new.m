close all; clear all; clc;

order = 3;      % order of sgolay filter
framelen = 51;  % window size of sgolay filter
minlen = 10;    % takes the amount of minimum values
startmin = 5;
endmin = 10;

% %% Acceleration Data For Variety of velocities for 0% Brake 
% velocity_brake0 = [2.399589, 4.471362, 6.448318, 8.559670, 11.072673, 13.000194, 15.507926, 17.218624];  % m/s
% 
% inFile = 'brake_0_5mph/_vectornav_veltest_msg.data.txt';
% data = load(inFile, '-ascii');
% filtered_data = gradient(data(:,2),0.02);
% y = sgolayfilt(filtered_data(:,1),order,framelen);
% sort_filtered_data = sort(y);
% 
% brake5mph = mean(sort_filtered_data(startmin:endmin,:));
% 
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
% 
% acceleration0 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];



%% Acceleration Data For Variety of velocities for 40% Brake 
velocity_brake40 = [2.332692, 4.290472, 6.482032, 8.636277, 10.623586];  % m/s

inFile = 'brake_40_5mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_40_10mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_40_15mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_40_20mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_40_25mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration_brake40 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];

%% Acceleration Data For Variety of velocities for 10% Brake 
velocity_brake10 = [2.332692, 4.290472, 6.482032, 8.636277, 10.623586];  % m/s

inFile = 'brake_10_5mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_10_10mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_10_15mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_10_20mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_10_25mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration_brake10 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];

%% Acceleration Data For Variety of velocities for 20% Brake 
velocity_brake20 = [2.332692, 4.290472, 6.482032, 8.636277, 10.623586];  % m/s

inFile = 'brake_20_5mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_20_10mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_20_15mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_20_20mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_20_25mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration_brake20 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];

%% Acceleration Data For Variety of velocities for 30% Brake 
velocity_brake30 = [2.332692, 4.290472, 6.482032, 8.636277, 10.623586];  % m/s

inFile = 'brake_30_5mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_30_10mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_30_15mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_30_20mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_30_25mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration_brake30 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];

%% Acceleration Data For Variety of velocities for 50% Brake 
velocity_brake50 = [2.255553, 4.345825, 6.759151, 8.636277, 10.623586];  % m/s

inFile = 'brake_50_5mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake5mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_50_10mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake10mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_50_15mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake15mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_50_20mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake20mph = mean(sort_filtered_data(startmin:endmin,:));

inFile = 'brake_50_25mph/_vectornav_velTEST_msg.data.txt';
data = load(inFile, '-ascii');
filtered_data = gradient(data(:,2),0.02);
y = sgolayfilt(filtered_data(:,1),order,framelen);
sort_filtered_data = sort(y);

brake25mph = mean(sort_filtered_data(startmin:endmin,:));

acceleration_brake50 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph];


%% 2D Plotting 

figure(1)
% plot(velocity_brake0, acceleration0, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
hold on

plot(velocity_brake10, acceleration_brake10, 'color', [0.5764 0.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_brake20, acceleration_brake20, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_brake30, acceleration_brake30, 'color', [0.0 0.5647 0.0], 'linestyle', '-', 'marker', 'o')
plot(velocity_brake40, acceleration_brake40, 'color', [1 0.5 0.5], 'linestyle', '-', 'marker', 'o')
plot(velocity_brake50, acceleration_brake50, 'color', [1 0.0 0.0], 'linestyle', '-', 'marker', 'o')
% plot(velocity_brake60, acceleration_brake60, 'color', [0.5764 0.0 0.0], 'linestyle', '-', 'marker', 'o')
% plot(velocity_brake70, acceleration_brake70, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')
% plot(velocity_brake80, acceleration_brake80, 'color', [0.0 0.5647 0.0], 'linestyle', '-', 'marker', 'o')
% plot(velocity_brake90, acceleration_brake90, 'color', [0 0.0 1.0], 'linestyle', '-', 'marker', 'o')
% plot(velocity_brake100, acceleration_brake100, 'color', [0 0.7490 1.0], 'linestyle', '-', 'marker', 'o')

xlabel('Velocity (m/s)')
ylabel('Acceleration (m/s^2)')
title('Braking Speed-based Acceleration Map')
grid on
legend( '10% Brake','20% Brake','30% Brake','40% Brake', '50% Brake')

%% Developing vectors for surface fitting
% speed = [velocity_brake0, velocity_brake50, velocity_brake60, velocity_brake70,...
%         velocity_brake80, velocity_brake90, velocity_brake100];
% acceleration = [acceleration0, acceleration_brake50, acceleration_brake60, acceleration_brake70,...
%                 acceleration_brake80, acceleration_brake90, acceleration_brake100];
% brake0 = 0*ones(size(acceleration0));
% brake40 = -40*ones(size(acceleration_brake40));
% brake50 = -50*ones(size(acceleration_brake50));
% brake60 = -60*ones(size(acceleration_brake60));
% brake70 = -70*ones(size(acceleration_brake70));
% brake80 = -80*ones(size(acceleration_brake80));
% brake90 = -90*ones(size(acceleration_brake90));
% brake100 = -100*ones(size(acceleration_brake100));
% 
% brake = [brake0, brake50, brake60, brake70, brake80, brake90, brake100];
% brake1 = 0.01*brake;


speed1_5 = [velocity_brake0(1:5), velocity_brake50(1:5), velocity_brake60(1:5), velocity_brake70(1:5),...
        velocity_brake80(1:5), velocity_brake90(1:5), velocity_brake100(1:5)];
acceleration1_5 = [acceleration0(1:5), acceleration_brake50(1:5), acceleration_brake60(1:5), acceleration_brake70(1:5),...
                acceleration_brake80(1:5), acceleration_brake90(1:5), acceleration_brake100(1:5)];
brake0 = 0*ones(size(acceleration0));
brake40 = -40*ones(size(acceleration_brake40));
brake50 = -50*ones(size(acceleration_brake50));
brake60 = -60*ones(size(acceleration_brake60));
brake70 = -70*ones(size(acceleration_brake70));
brake80 = -80*ones(size(acceleration_brake80));
brake90 = -90*ones(size(acceleration_brake90));
brake100 = -100*ones(size(acceleration_brake100));

brake1_5 = [brake0(1:5), brake50(1:5), brake60(1:5), brake70(1:5), brake80(1:5), brake90(1:5), brake100(1:5)];
brake1_5_1 = 0.01*brake1_5;

speed = [velocity_brake0, velocity_brake50, velocity_brake60, velocity_brake70,...
        velocity_brake80, velocity_brake90, velocity_brake100];
acceleration = [acceleration0, acceleration_brake50, acceleration_brake60, acceleration_brake70,...
                acceleration_brake80, acceleration_brake90, acceleration_brake100];
         
brake = [brake0, brake50, brake60, brake70, brake80, brake90, brake100];
brake1 = 0.01*brake;

% createFit(speed, throttle, acceleration)

brakeDynamics(speed, brake, acceleration)
cftool

