clear all; clc;
vel = 10;       %velocity
acc = 1;       %input

i00 = 0.08138;
i10 = 0.05346;
i01 = 0.2464;
i20 = -0.009;
i11 = -0.02272;
i02 = -0.02713;
i30 = 0.000504;
i21 = 0.003229;
i12 = 0.005089;
i03 =  0;


input_ff = i00 + i10*vel + i01*acc + i20*vel^2 + i11*vel*acc + i02*acc^2 + ...
      i30*vel^3 + i21*vel^2*acc + i12*vel*acc^2 + i03*acc^3;
in = input_ff;

if in < -1
    in = -1
elseif in > 0.7
    in = 0.7
end

in = 0.4
vx = 10.5


vxdot = -0.6062*vx + 1.937*in + 0.08625*vx^2 ...
    +0.2565*vx*in + 4.283*in^2 -0.00339*vx^3 ...
    -0.03248*vx^2*in -0.3862*vx*in^2 + 4.878*in^3
  
  