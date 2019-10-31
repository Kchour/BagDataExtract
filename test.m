%   vx = 5;
%   del = -270 * pi/180 /12.5;
% 
% 
%   % c = 0.0409
%   psidot =  0.004146*vx - 0.0*del -0.002042*vx^2 + 0.4709*vx*del ...
%   -0.0*del^2 - 0.0002158*vx^3 - 0.02621*vx^2*del + 0.04221*vx*del^2 + 0.0*del^3
% 
%   psidot =  0.01464*vx - 0.2674*del -0.002212*vx^2 + 0.4553*vx*del ...
%   -0.01625*del^2 - 7.795*10^-5*vx^3 - 0.02053*vx^2*del + 0.03731*vx*del^2 + 0.9621*del^3
% 
%   % c = 0.1081
%   vydot = - 0.01763*vx - 0.0*del + 0.01533*vx^2 + 0.6437*vx*del ...
%   + 0.0*del^2 - 0.001306*vx^3 + 0.1934*vx^2*del +0.1626*vx*del^2 +0.0*del^3
% 
%   vydot = - 0.01128*vx - 0.9253*del + 0.01316*vx^2 + 0.6581*vx*del ...
%   - 0.1144*del^2 - 0.001149*vx^3 + 0.2039*vx^2*del + 0.1935*vx*del^2 +2.829*del^3
% 
% local = vydot - 1*psidot*vx
% 
% 
% %% New data from only imu
% 
%   psidot_new1 =  0.02637*vx - 0.0*del -0.006662*vx^2 + 0.3911*vx*del ...
%   -0.0*del^2 - 0.0004282*vx^3 - 0.01555*vx^2*del + 0.0159*vx*del^2 + 0.0*del^3
% 
%   psidot_new2 =  0.02401*vx - 0.09089*del -0.005868*vx^2 + 0.3879*vx*del ...
%   +0.03783*del^2 - 0.0003714*vx^3 - 0.01391*vx^2*del + 0.005258*vx*del^2 + 0.3106*del^3
% 
%   vydot_new1 = -0.1149*vx - 0.0*del + 0.02333*vx^2 + 0.5743*vx*del ...
%    + 0.0*del^2 - 0.001282*vx^3 + 0.2498*vx^2*del +0.09196*vx*del^2 +0.0*del^3
% 
%   vydot_new2 = -0.1213*vx - 0.4023*del + 0.02552*vx^2 + 0.6126*vx*del ...
%    + 0.09748*del^2 - 0.001439*vx^3 + 0.2502*vx^2*del +0.06372*vx*del^2 +1.026*del^3
% 
% local_new1 = vydot_new1 - 1*psidot_new1*vx
% local_new2 = vydot_new2 - 1*psidot_new2*vx

%% New body frame

vx = 9.7;
del = -90 * pi/180 /12.5;

  psidot_new1 =  0.02637*vx - 0.0*del -0.006662*vx^2 + 0.3911*vx*del ...
  -0.0*del^2 + 0.0004282*vx^3 - 0.01555*vx^2*del + 0.0159*vx*del^2 + 0.0*del^3

  vydot_new1 = -0.1678*vx - 0.0*del + 0.03273*vx^2 + 0.1701*vx*del ...
   + 0.0*del^2 - 0.001857*vx^3 + 0.02846*vx^2*del +0.05254*vx*del^2 +0.0*del^3;

  vydot_new2 = 0.04527*vx - 0.0*del - 0.007525*vx^2 + 0.1668*vx*del ...
   + 0.0*del^2 - 0.000409*vx^3 + 0.02901*vx^2*del +0.04517*vx*del^2 +0.0*del^3;

  vydot_new3 = -0.043*vx - 0.0*del - 0.007525*vx^2 + 0.1668*vx*del ...
   + 0.0*del^2 - 0.000409*vx^3 + 0.02901*vx^2*del +0.04517*vx*del^2 +0.0*del^3;

vx = speed;
del = road_wheel_angles_rad;
psidot = zeros(1,length(speed));

for i = 1:length(speed)
      psidot(i) =  0.02637*vx(i) - 0.0*del(i) -0.006662*vx(i)^2 + 0.3911*vx(i)*del(i) ...
  -0.0*del(i)^2 + 0.0004282*vx(i)^3 - 0.01555*vx(i)^2*del(i) + 0.0159*vx(i)*del(i)^2 + 0.0*del(i)^3;

end

cen_acc = psidot.*vx;

new_lat_acc_body = lateral_acceleration - cen_acc



%vydot
% syms a b c x
% 
% a*x^3 + b*x^2 + cx + 0;
% a*x + b;
% b*x +c;
% 
% matrix= [ a b c 0; 0 0 a b; 0 0 b c]