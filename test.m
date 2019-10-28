  vx = 0;
  del = 30 * pi/180 /12.5;

  % c = 0.1081
  vydot = - 0.01763*vx - 0.0*del + 0.01533*vx^2 + 0.6437*vx*del ...
  + 0.0*del^2 - 0.001306*vx^3 + 0.1934*vx^2*del +0.1626*vx*del^2 +0.0*del^3

  % c = 0.0409
  psidot =  0.004146*vx - 0.0*del -0.002042*vx^2 + 0.4709*vx*del ...
  -0.0*del^2 - 0.0002158*vx^3 - 0.02621*vx^2*del + 0.04221*vx*del^2 + 0.0*del^3

%vydot
% syms a b c x
% 
% a*x^3 + b*x^2 + cx + 0;
% a*x + b;
% b*x +c;
% 
% matrix = [ a b c 0; 0 0 a b; 0 0 b c]