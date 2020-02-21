close all; clear all; clc;

plot_path = false;
plot_velocity = false;
plot_error = false;
plot_yaw_rate = false;
plot_input_long = false;
plot_input_lat = true;

%% read files

% path files
inFile = 'odom_waypoints.dat';
data = load(inFile, '-ascii');
waypoints = data - [data(1,1),data(1,2)];

inFile = 'track3/_vehicle_odom2_msg.x.txt';
path_driven_x = load(inFile, '-ascii');

inFile = 'track3/_vehicle_odom2_msg.y.txt';
path_driven_y = load(inFile, '-ascii');

path_driven = [path_driven_x(:,2), path_driven_y(:,2)] - [data(1,1),data(1,2)];

% velocity files
inFile = 'track3/_desired_velocity_msg.data.txt';
vel_des = load(inFile, '-ascii');

inFile = 'track3/_vectornav_veltest2_msg.data.txt';
vel_x = load(inFile, '-ascii');

inFile = 'track3/_vectornav_veltest_msg.data.txt';
vel_lin = load(inFile, '-ascii');

% angular velocity files
inFile = 'track3/_desired_yaw_rate_msg.data.txt';
yaw_rate_des = load(inFile, '-ascii');

inFile = 'track3/_vectornav_imu_msg.Accel.z.txt';
yaw_rate = load(inFile, '-ascii');

% inputs
inFile = 'track3/_as_rx_accel_cmd_msg.command.txt';
throttle = load(inFile, '-ascii');

inFile = 'track3/_as_rx_brake_cmd_msg.command.txt';
brake = load(inFile, '-ascii');

inFile = 'track3/_as_rx_steer_cmd_msg.command.txt';
steer = load(inFile, '-ascii');

% Accelerations
inFile = 'track3/_desired_acceleration_msg.data.txt';
acc_long_des = load(inFile, '-ascii');

inFile = 'track3/_as_rx_accel_cmd_msg.command.txt';
acc_long = load(inFile, '-ascii');


% lateral error distance 
lateral_err = zeros(length(path_driven),1);
distance = zeros(length(waypoints),1);
for i = 1:length(path_driven)
    for j = 1:length(waypoints)
        distance(j) = sqrt((path_driven(i,1) - waypoints(j,1))^2 + (path_driven(i,2) - waypoints(j,2))^2);
    end
    lateral_err(i) = min(distance);
end


%% Plotting Path driven

widthmodifier = 1.0;
axiswidth = 5.0;

if plot_path == true
    figure(1)
    set(gcf, 'Position', get(0, 'Screensize'));
    plot(waypoints(:,1), waypoints(:,2),'LineWidth',3)
    hold on
    grid on
    title('Ground Vehicle Path Tracking', 'FontSize', 24)
    xlabel('X Position (m)','FontSize', 20)
    ylabel('Y Position (m)','FontSize', 20)
    curve_path = animatedline('Color','r','Marker', ".",'LineWidth',3);
    legend({'Waypoints', 'Path Driven'},'FontSize', 20)
    for i=1:7:length(path_driven)
        addpoints(curve_path,path_driven(i,1),path_driven(i,2))
        drawnow
        if i< 3028 || (i>5050 && i< 8050) || (i > 11000)
            xlim([path_driven(i,1)-widthmodifier*axiswidth path_driven(i,1)+widthmodifier*axiswidth])
            ylim([path_driven(i,2)-axiswidth path_driven(i,2)+axiswidth])
        else
            xlim([-300 10])
            ylim([-10 600])
        end   
    end
    
    xlim([-300 10])
    ylim([-10 600])
end


%% Plotting velocity stuff

if plot_velocity == true
    figure(2)
    set(gcf, 'Position', get(0, 'Screensize'));
    hold on
    grid on
    title('Ground Vehicle Velocity Tracking', 'FontSize', 24)
    xlabel('Time (s)','FontSize', 20)
    ylabel('Longitudinal Velocity (m/s)','FontSize', 20)
    curve_vel_x = animatedline('Color','b','Marker', ".",'LineWidth',3);
    curve_vel_des = animatedline('Color','k','Marker', ".",'LineWidth',3);
    legend({'Vehicle''s Velocity', 'Desired Velocity'},'FontSize', 20,'Location','southeast')
    for i = 1:3:length(vel_des)
        addpoints(curve_vel_x,vel_lin(floor(8181/4908*i),1),vel_lin(floor(8181/4908*i),2))
        addpoints(curve_vel_des,vel_des(i,1),vel_des(i,2))
        drawnow
        ylim([0 5])
    end  
end

%% Plotting lateral error stuff

if plot_error == true
    figure(3)
    set(gcf, 'Position', get(0, 'Screensize'));
    hold on
    grid on
    title('Ground Vehicle''s Lateral Error Over Time', 'FontSize', 24)
    xlabel('Time (s)','FontSize', 20)
    ylabel('Distance (m)','FontSize', 20)
    curve_lat_err = animatedline('Color','r','Marker', ".",'LineWidth',3);
    legend({'Lateral Error'}, 'FontSize', 20,'Location','northwest')
    for i = 1:7:length(lateral_err)
        addpoints(curve_lat_err,path_driven_x(i,1),lateral_err(i))
        drawnow
        ylim([0 1])
    end  
end

%% Plotting angular velocity 
if plot_yaw_rate == true
    figure(4)
    set(gcf, 'Position', get(0, 'Screensize'));
    hold on
    grid on
    title('Ground Vehicle Yaw Rate Tracking', 'FontSize', 24)
    xlabel('Time (s)','FontSize', 20)
    ylabel('Angular Velocity (rad/s)','FontSize', 20)
    curve_yaw_rate = animatedline('Color','b','Marker', ".",'LineWidth',3);
    curve_yaw_rate_des = animatedline('Color','k','Marker', ".",'LineWidth',3);
    legend({'Yaw Rate', 'Desired Yaw Rate'},'FontSize', 20,'Location','northeast')
    for i = 1:3:length(yaw_rate_des)
        addpoints(curve_yaw_rate,yaw_rate(floor(8179/4908*i+151),1),-yaw_rate(floor(8179/4908*i+151),2))
        addpoints(curve_yaw_rate_des,yaw_rate_des(i,1),yaw_rate_des(i,2))
        drawnow
        ylim([-0.8 0.8])
    end  
end

%% Plotting inputs
if plot_input_long == true
    figure(5)
    set(gcf, 'Position', get(0, 'Screensize'));
    hold on
    grid on
    title('Ground Vehicle Throttle and Brake', 'FontSize', 24)
    xlabel('Time (s)','FontSize', 20)
    ylabel('Longitudinal Input (%)','FontSize', 20)
    curve_throttle = animatedline('Color','b','Marker', ".",'LineWidth',3);
    curve_brake = animatedline('Color','r','Marker', ".",'LineWidth',3);
    legend({'Throttle', 'Brake'},'FontSize', 20,'Location','northeast')
    for i = 1:3:length(throttle)
        addpoints(curve_throttle,throttle(i,1),100*throttle(i,2))
        addpoints(curve_brake,brake(i+44,1),100*brake(i+44,2))
        drawnow
    end  
end


if plot_input_lat == true
    figure(5)
    set(gcf, 'Position', get(0, 'Screensize'));
    hold on
    grid on
    title('Ground Vehicle Steering', 'FontSize', 24)
    xlabel('Time (s)','FontSize', 20)
    ylabel('Angle (rad)','FontSize', 20)
    curve_steer = animatedline('Color','r','Marker', ".",'LineWidth',3);
    legend({'Steering Wheel Angle'},'FontSize', 20,'Location','northeast')
    for i = 1:3:length(throttle)
            addpoints(curve_steer,steer(i+44,1),steer(i+44,2))
            ylim([-7 7])
        drawnow
    end  
end






