vx = 4;
in = 0.3;

% combined
  vxdot = -0.6062*vx + 1.937*in + 0.08625*vx^2 ...
    +0.2565*vx*in + 4.283*in^2 -0.00339*vx^3 ...
    -0.03248*vx^2*in -0.3862*vx*in^2 + 4.878*in^3

% combined -1 to 1
u_ff_c = 0.09969*vx + 0.2586*vxdot - 0.01644*vx^2 ...
    - 0.02599*vx*vxdot - 0.02604*vxdot^2 + 0.0008585*vx^3 ...
    -0.003402*vx^2*vxdot - 0.004922*vx*vxdot^2

% individual throttle 0 to 1
u_ff_t = 0.1492*vx + 0.224*vxdot - 0.02081*vx^2 ...
    - 0.02067*vx*vxdot - 0.01678*vxdot^2 + 0.0009505*vx^3 ...
    + 0.002101*vx^2*vxdot - 0.0008706*vx*vxdot^2











