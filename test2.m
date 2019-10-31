vx = 9;
del = 200* pi/180 /12.5

  psidot =  0.02637*vx - 0.0*del -0.006662*vx^2 + 0.3911*vx*del ...
  -0.0*del^2 + 0.0004282*vx^3 - 0.01555*vx^2*del + 0.0159*vx*del^2 + 0.0*del^3
% 
%   u_ff = -0.03028*vx + 1.966*psidot + 0.007691*vx^2 - 0.3524*vx*psidot ...
%   -0.1374*psidot^2 - 0.0005049*vx^3 + 0.02106*vx^2*psidot + 0.02958*vx*psidot^2 - 0.2045*psidot^3

 u_ff = -0.03028*vx + 1.966*psidot + 0.007691*vx^2 - 0.3524*vx*psidot ...
  -0.1374*psidot^2 - 0.0005049*vx^3 + 0.02106*vx^2*psidot + 0.02958*vx*psidot^2 - 0.2045*psidot^3