function [fitresult, gof] = psidot(speed, road_wheel_angles_rad, lateral_velocity)
%CREATEFIT(SPEED,ROAD_WHEEL_ANGLES_RAD,LATERAL_VELOCITY)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : speed
%      Y Input : road_wheel_angles_rad
%      Z Output: lateral_velocity
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 31-Oct-2019 11:30:13


%% Fit: 'untitled fit 1'.
[xData, yData, zData] = prepareSurfaceData( speed, road_wheel_angles_rad, lateral_velocity );

% Set up fittype and options.
ft = fittype( 'poly33' );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Lower = [0 -Inf 0 -Inf -Inf 0 -Inf -Inf -Inf 0];
opts.Upper = [0 Inf 0 Inf Inf 0 Inf Inf Inf 0];

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, [xData, yData], zData );
legend( h, 'Surface fit', 'Empirical Data', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'Velocity (m/s)', 'Interpreter', 'none' );
ylabel( 'Road Wheel Angle (rad)', 'Interpreter', 'none' );
zlabel( 'Angular Velocity (rad/s)', 'Interpreter', 'none' );
grid on


