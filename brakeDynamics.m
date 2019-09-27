function [fitresult, gof] = brakeDynamics(speed, brake, acceleration)
%CREATEFIT(SPEED,BRAKE,ACCELERATION)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : speed
%      Y Input : brake
%      Z Output: acceleration
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 25-Sep-2019 12:04:37


%% Fit: 'untitled fit 1'.
[xData, yData, zData] = prepareSurfaceData( speed, brake, acceleration );

% Set up fittype and options.
ft = fittype( 'poly33' );

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft );

% Plot fit with data.
figure( 'Name', 'Brake Dynamics' );
h = plot( fitresult, [xData, yData], zData );
legend( h, 'Surface Fit', 'Emperical Data', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'Velocity (m/s)', 'Interpreter', 'none' );
ylabel( 'Brake %', 'Interpreter', 'none' );
zlabel( 'Longitudinal Acceleration (m/s^{2})');
grid on

% Title
title('Data-Driven Brake Longitudinal Dynamics')

