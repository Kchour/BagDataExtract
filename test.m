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
u = input_ff

if u < -1
    u = -1
elseif u > 0.7
    u = 0.7
end

p00 = -0.4256;
p10 = -0.3994;
p01 = 2.293;
p20 = 0.0547;
p11 = 0.1635;
p02 = 4.628;
p30 = -0.001896;
p21 = -0.02716;
p12 = -0.4266;
p03 = 4.893;


acc = p00 + p10*vel + p01*u + p20*vel^2 + p11*vel*u + p02*u^2 + ...
      p30*vel^3 + p21*vel^2*u + p12*vel*u^2 + p03*u^3
  
  