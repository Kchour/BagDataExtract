% Couldn't figure how to automatically solve for delay so manually doing it
clear all; close all; clc;

% time delay 30%
point1 = [5.200955,0.300000];   % acceleration command [time, command]
point2 = [5.688540,0.042845];    % velocity increase time [time, velocity]

timedelay30 = point2(1) - point1(1);

% time delay 35%
point1 = [3.149553,0.350000];   % acceleration command [time, command]
point2 = [3.616608,0.040885];    % velocity increase time [time, velocity]

timedelay35 = point2(1) - point1(1);

% time delay 40%
point1 = [3.244889,0.400000];   % acceleration command [time, command]
point2 = [3.536988,0.097451];    % velocity increase time [time, velocity]

timedelay40 = point2(1) - point1(1);

% time delay 45%
point1 = [4.242088,0.450000];   % acceleration command [time, command]
point2 = [3.868419,0.065059];    % velocity increase time [time, velocity]

timedelay45 = point2(1) - point1(1);
fprintf('45 has invalid time delay\n')

% time delay 50%
point1 = [10.232895,0.500000];   % acceleration command [time, command]
point2 = [10.636067,0.086995];    % velocity increase time [time, velocity]

timedelay50 = point2(1) - point1(1);

% time delay 55%
point1 = [9.152242,0.550000];   % acceleration command [time, command]
point2 = [9.158125,0.156428];    % velocity increase time [time, velocity]

timedelay55 = point2(1) - point1(1);
fprintf('55 has invalid time delay\n')


% time delay 60%
point1 = [3.245686,0.600000];   % acceleration command [time, command]
point2 = [2.929750,0.076357];    % velocity increase time [time, velocity]

timedelay60 = point2(1) - point1(1);

fprintf('60 has invalid time delay\n')

% time delay 65%
point1 = [4.200068,0.650000];   % acceleration command [time, command]
point2 = [3.851454,0.144490];    % velocity increase time [time, velocity]

timedelay65 = point2(1) - point1(1);

fprintf('65 has invalid time delay\n')

% time delay 70%
point1 = [5.209926,0.700000];   % acceleration command [time, command]
point2 = [4.714829,0.200940];    % velocity increase time [time, velocity]

timedelay70 = point2(1) - point1(1);

fprintf('70 has invalid time delay\n')

% time delay 75%
point1 = [7.253337,0.750000];   % acceleration command [time, command]
point2 = [7.521709,0.106492];    % velocity increase time [time, velocity]

timedelay75 = point2(1) - point1(1);

% time delay 80%
point1 = [2.199322,0.800000];   % acceleration command [time, command]
point2 = [2.480569,0.207078];    % velocity increase time [time, velocity]

timedelay80 = point2(1) - point1(1);

% time delay 85%
point1 = [3.184782,0.850000];   % acceleration command [time, command]
point2 = [3.335946,0.149418];    % velocity increase time [time, velocity]

timedelay85 = point2(1) - point1(1);
