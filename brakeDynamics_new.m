function [fitresult, gof] = brakeDynamics_new(speed, brake, acceleration)
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

%  Auto-generated by MATLAB on 05-Oct-2019 21:50:35


%% Fit: 'untitled fit 1'.
[xData, yData, zData] = prepareSurfaceData( speed, brake, acceleration );

% Set up fittype and options.
ft = fittype( 'poly33' );

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, [xData, yData], zData );
legend( h, 'Surface Fit', 'Empirical Data', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'Velocity (m/s)', 'Interpreter', 'none' );
ylabel( 'Brake', 'Interpreter', 'none' );
zlabel( 'Linear Acceleration (m/s^{2})');
grid on


