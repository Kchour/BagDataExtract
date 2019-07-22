close all; clear all; clc;

%% Steady State Velocity Data
throttle = [0, 25, 27.5, 30, 35, 40, 45, 50, 55, 60, 65, 70]';  % throttle percentage

velocity_ss = [0, 0, 1.805, 3.21, 5.3, 7.65, 10.23, 13.2, 16.458, 20.38, 21.7, 24]'; %m/s

figure(1)
plot(throttle, velocity_ss, 'b-o')
xlabel('Throttle %')
ylabel('Steady State Velocity (m/s)')
title('Steady State Velocity on Flat Pavement')



%% Acceleration Data For Each Throttle Percentage starting at 0 m/s
throttle = [0, 25, 27.5, 30, 35, 40, 45, 50, 55, 60, 65, 70];  % throttle percentage

acc0 = 0;
acc25 = 0;
acc275 = (0.501015-0.017467)/(7.522627-3.222718);
%acc2752 = (1.005075-0.017467)/(11.662671-3.222718);
acc30 = (1.004173-0.015836)/(7.488339-5.648407);
%acc302 = (2.001127-0.015836)/(11.148315-5.648407)
acc35 = (1.014036-0.006614)/(4.636735-3.596896);
%acc352 = (2.004305-0.006614)/(6.136752-3.596896)
acc40 = (1.001532-0.029717)/(4.176875-3.476820);
%acc402 = (2.000381-0.029717)/(5.016952-3.476820);
acc45 = (1.009871-0.002533)/(4.388475-3.828435);
%acc452 = (2.022356-0.002533)/(5.008518-3.828435)
acc50 = (1.002543-0.009362)/(11.015702-10.596018);
%acc502 = (2.035494-0.009362)/(11.475712-10.596018)
acc55 = (1.033672-0.024365)/(9.418261-9.078120);
%acc552 = (2.010228-0.024365)/(9.698160-9.078120)
acc60 = (1.044712-0.003969)/(3.209776-2.889712);
%acc602 = (2.022331-0.003969)/(3.469772-2.889712)
acc65 = (1.094427-0.005443)/(4.111795-3.791513);
%acc652 = (2.088763-0.005443)/(4.331318-3.791513)
acc70 = (1.082660-0.029578)/(4.914798-4.674802);
%acc702 = (2.001266-0.029578)/(5.094604-4.674802)   % Just to check for
                                                    % accuracy

acceleration= [acc0, acc25, acc275, acc30, acc35, acc40, acc45, acc50, acc55, acc60, acc65, acc70];

figure(2)
plot(throttle, acceleration, 'r-o')
xlabel('Throttle %')
ylabel('Acceleration (m/s^2)')
title('Acceleration from Throttle Step Input starting at 0 m/s')
