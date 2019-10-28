function [fitresult, gof] = road_feedforward(speed, lateral_acceleration, road_wheel_angles_rad)
%CREATEFIT(SPEED,LATERAL_VELOCITY,ROAD_WHEEL_ANGLES_RAD)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : speed
%      Y Input : lateral_velocity
%      Z Output: road_wheel_angles_rad
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 28-Sep-2019 11:00:44


%% Fit: 'untitled fit 1'.
[xData, yData, zData] = prepareSurfaceData( speed, lateral_acceleration, road_wheel_angles_rad );

% Set up fittype and options.
ft = fittype( 'poly33' );

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft );

% Plot fit with data.
figure( 'Name', 'Feedforward Road Wheel Angle' );
h = plot( fitresult, [xData, yData], zData );
legend( h, 'Surface Fit', 'Empirical Data', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'Velocity (m/s)', 'Interpreter', 'none' );
ylabel( 'Lateral Acceleration (m/s^{2})');
zlabel( 'Road Wheel Angle (rad)', 'Interpreter', 'none' );

% title
% title ('Lateral Feedforward')
grid on

