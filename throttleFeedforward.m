function [fitresult, gof] = throttleFeedforward(speed, acceleration, throttle1)
%CREATEFIT1(SPEED,ACCELERATION,THROTTLE1)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : speed
%      Y Input : acceleration
%      Z Output: throttle1
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 01-Oct-2019 02:22:57


%% Fit: 'untitled fit 1'.
[xData, yData, zData] = prepareSurfaceData( speed, acceleration, throttle1 );

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
ylabel( 'Longitudinal Acceleration (m/s^{2})');
zlabel( 'Throttle', 'Interpreter', 'none' );
grid on

