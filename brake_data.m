close all; clear all; clc;

%% Acceleration Data For Variety of velocities for 0% Brake 
velocity = [2.399589, 4.471362, 6.448318, 8.559670, 11.072673, 13.000194, 15.507926, 17.218624];  % m/s

brake5mph = (0.767394-1.946687)/(9.637850-8.077919);
brake5mph2 = (1.002368-1.378073)/(8.958038-8.477911);

brake10mph = (1.126974-4.008053)/(12.119987-9.639985);
brake10mph2 = (3.284663-3.015364)/(10.240087-10.459895);

brake15mph = (1.008533-5.422333)/(14.931870-11.211954);
brake15mph2 = (3.404444-4.393862)/(12.891840-12.111886);

brake20mph = (1.011367-7.514272)/(18.463570-12.683760);
brake20mph2 = (3.028557-4.089550)/(16.703745-15.843602);

brake25mph = (1.290332-9.508132)/(21.744708-14.384798);
brake25mph2 = (5.005111-6.004445)/(18.704790-17.784784);

brake30mph = (1.157354-11.979472)/(23.999135-13.559202);
brake30mph2 = (4.520471-5.547513)/(21.039165-20.119223);

brake35mph = (1.852462-13.524389)/(28.325282-16.605469);
brake35mph2 = (5.574302-6.558788)/(25.005396-24.025368);

brake40mph = (2.090986-15.942108)/(38.993088-26.013140);
brake40mph2 = (7.524243-9.391258)/(34.173213-32.313172);

acceleration0 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

figure(1)
plot(velocity, acceleration0, 'color', [0.0 0.0 0.0], 'linestyle', '-', 'marker', 'o')
xlabel('Velocity (m/s)')
ylabel('Acceleration (m/s^2)')
title('Braking Speed-based Acceleration Map')
hold on
%% Acceleration Data For Variety of velocities for 50% Brake 
velocity = [2.255553, 4.345825, 6.759151, 8.636277, 10.623586, 12.743763, 15.416848, 17.320083];  % m/s

point1 = [6.779400,1.889777];   point2 = [7.379426,1.062208];
point3 = [6.919497,1.653626];   point4 = [7.899459,0.487911];
brake5mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake5mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [11.318691,3.822406];   point2 = [11.838840,2.893236];
point3 = [11.478715,3.539388];   point4 = [12.878825,1.045455];
brake10mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake10mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [12.540196,5.527268];   point2 = [12.900203,4.885483];
point3 = [12.560314,5.481194];   point4 = [14.880212,1.156108];
brake15mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake15mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [14.595355,7.724909];   point2 = [15.395289,6.524931];
point3 = [15.075360,7.000977];   point4 = [18.695321,1.069524];
brake20mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake20mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [20.723450,9.889665];   point2 = [21.403349,8.831270];
point3 = [21.083421,9.338181];   point4 = [25.483439,1.539461];
brake25mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake25mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [24.942102,11.093856];   point2 = [25.622206,10.035141];
point3 = [24.742271,11.406249];   point4 = [30.722247,1.320236];
brake30mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake30mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [22.223171,14.292436];   point2 = [23.023378,13.277370];
point3 = [21.523129,15.058323];   point4 = [30.143283,2.795945];
brake35mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake35mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [21.662642,16.104480];   point2 = [22.762684,14.694565];
point3 = [22.442602,15.076250];   point4 = [31.722588,2.187781];
brake40mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake40mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));


acceleration50 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration50, 'color', [1 0.0 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 60% Brake 
velocity = [1.949396, 4.456033, 6.263209, 8.291727, 10.666364, 12.900174, 15.004222, 17.342080];  % m/s

point1 = [13.024563,1.878128];   point2 = [13.644574,0.796083];
point3 = [13.144785,1.744320];   point4 = [13.864548,0.349276];
brake5mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake5mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [9.724603,4.030460];   point2 = [10.144532,3.062088];
point3 = [9.904565,3.600583];   point4 = [11.144459,0.878526];
brake10mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake10mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [10.027093,5.545533];   point2 = [10.687176,4.016912];
point3 = [9.887123,5.848352];   point4 = [11.687116,1.515651];
brake15mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake15mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [22.080277,7.026368];   point2 = [22.480036,6.123533];
point3 = [22.320121,6.493218];   point4 = [24.180196,1.921242];
brake20mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake20mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [16.026867,9.844043];   point2 = [16.487278,8.777397];
point3 = [16.286909,9.273821];   point4 = [19.206871,1.770089];
brake25mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake25mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [20.264387,11.515159];   point2 = [20.744301,10.498125];
point3 = [20.684327,10.626102];   point4 = [24.384301,2.040708];
brake30mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake30mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [22.035926,14.010627];   point2 = [22.495922,13.018193];
point3 = [21.708932,15.381420];   point4 = [27.575854,1.701450];
brake35mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake35mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [21.569021,15.570625];   point2 = [22.409163,14.383445];
point3 = [22.400368,14.374614];   point4 = [29.988989,2.622781];
brake40mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake40mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));


acceleration60 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration60, 'color', [0.5764 0.0 0.0], 'linestyle', '-', 'marker', 'o')
%% Acceleration Data For Variety of velocities for 70% Brake 
velocity = [2.370531, 4.337160, 6.588608, 8.268588, 10.751820, 12.916797, 15.015370, 17.322462];  % m/s

point1 = [8.027149,1.834653];   point2 = [8.267274,1.381969];
point3 = [7.947218,1.928043];   point4 = [8.567256,0.681468];
brake5mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake5mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [8.948733,4.010718];   point2 = [9.328687,3.020325];
point3 = [9.128802,3.649628];   point4 = [10.308804,0.366686];
brake10mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake10mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [9.983595,6.215733];   point2 = [10.523586,4.588855];
point3 = [10.203662,5.621272];   point4 = [11.403611,1.649293];
brake15mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake15mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [14.344343,7.690416];   point2 = [14.944842,5.814281];
point3 = [14.504360,7.234183];   point4 = [16.124449,1.670316];
brake20mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake20mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [14.441531,9.817603];   point2 = [14.781551,8.744629];
point3 = [14.381538,9.992943];   point4 = [16.701589,1.970902];
brake25mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake25mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [15.055452,11.580388];   point2 = [15.395415,10.597765];
point3 = [15.215448,11.104466];   point4 = [18.115386,2.141903];
brake30mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake30mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [16.021710,12.793588];   point2 = [16.581709,11.244441];
point3 = [16.301910,12.027942];   point4 = [19.661724,2.457150];
brake35mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake35mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [21.700337,15.892168];   point2 = [22.480420,14.208274];
point3 = [22.400368,14.374614];   point4 = [27.080353,3.978057];
brake40mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake40mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));


acceleration70 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration70, 'color', [0.0 1.0 0.0], 'linestyle', '-', 'marker', 'o')

%% Acceleration Data For Variety of velocities for 80% Brake 
velocity = [2.103452, 4.275421, 6.515093, 8.560335, 10.620332, 13.058321, 15.060000, 17.381358];  % m/s

point1 = [7.933463,2.315682];   point2 = [7.953576,2.271077];
point3 = [8.193452,1.818326];   point4 = [8.433466,1.295211];
brake5mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake5mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [13.181928,4.020450];   point2 = [13.501849,3.075761];
point3 = [13.181928,4.020450];   point4 = [13.781864,2.023027];
brake10mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake10mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [8.644737,6.075789];   point2 = [8.884737,5.201111];
point3 = [8.664721,6.033383];   point4 = [9.044776,4.541115];
brake15mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake15mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [16.973038,8.033266];   point2 = [17.153234,7.293484];
point3 = [16.993056,7.978809];   point4 = [17.833231,4.400147];
brake20mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake20mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [17.281119,9.042038];   point2 = [17.521053,8.068559];
point3 = [17.001096,10.051952];   point4 = [18.721096,2.778759];
brake25mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake25mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [13.557536,12.052247];   point2 = [14.077507,10.062931];
point3 = [13.517550,12.183116];   point4 = [15.957528,2.468646];
brake30mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake30mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [19.279752,13.592139];   point2 = [19.519821,12.782088];
point3 = [19.359852,13.330885];   point4 = [22.120132,3.272732];
brake35mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake35mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [19.395586,16.829792];   point2 = [20.935575,12.405073];
point3 = [19.815629,15.701905];   point4 = [24.275784,2.187754];
brake40mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake40mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));


acceleration80 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration80, 'color', [0.0 0.5647 0.0], 'linestyle', '-', 'marker', 'o')
%% Acceleration Data For Variety of velocities for 90% Brake 
velocity = [2.103452, 4.229488, 6.698545, 8.387588, 10.684664, 12.880022, 15.219108, 17.439246];  % m/s

brake5mph = (0.022940-1.813192)/(10.360989-9.681061);
brake5mph2 = (1.042815-1.601007)/(10.021102-9.821170);

brake10mph = (0.024259-3.690838)/(13.859709-12.939768);
brake10mph2 = (2.051415-3.031315)/(13.359711-13.139752);

brake15mph = (1.045501-5.926587)/(11.198378-10.198406);
brake15mph2 = (2.520189-3.558570)/(10.918442-10.718359);

brake20mph = (0.007422-7.344434)/(16.225471-14.805473);
brake20mph2 = (5.035959-6.083190)/(15.265512-15.065513);

brake25mph = (0.977302-8.022525)/(26.631830-25.311817);
brake25mph2 = (6.620195-7.616379)/(25.571838-25.391884);

brake30mph = (1.015149-10.045740)/(21.847503-20.007586);
brake30mph2 = (7.055904-8.165822)/(20.607524-20.387475);

brake35mph = (1.043228-13.677525)/(20.936934-18.036983);
brake35mph2 = (8.024567-9.015447)/(20.631723-20.451737);

brake40mph = (2.093091-15.028284)/(22.248685-19.048721);
brake40mph2 = (7.064042-8.053071)/(21.028698-20.788758);

acceleration90 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration90, 'color', [0 0.0 1.0], 'linestyle', '-', 'marker', 'o')
%% Acceleration Data For Variety of velocities for 100% Brake 
velocity = [1.928696, 4.471362, 6.240145, 8.445275, 10.433095, 12.800073, 15.110204, 17.132518];  % m/s

brake5mph = (1.002167-1.652539)/(12.059458-11.799472);
brake5mph2 = (1.002167-1.928696)/(12.059458-11.619492);
brake10mph = (0.017548-4.031670)/(12.565067-11.305132);
brake10mph2 = (3.475173-4.031670)/(11.485057-11.305132);
brake15mph = (0.013415-5.960922)/(12.843380-11.343471);
brake15mph2 = (3.082864-4.052475)/(11.923383-11.763438);
brake20mph = (0.054862-7.776219)/(15.783230-14.383220);
brake20mph2 = (5.083097-6.023913)/(14.943223-14.783308);
brake20mph3 = (3.098999-4.078669)/(15.263215-15.103195);
brake25mph = (1.082500-8.053253)/(20.616753-19.436749);
brake25mph2 = (7.036176-8.053253)/(19.616799-19.436749);
brake30mph = (1.046045-12.000106)/(19.244762-17.324610);
brake30mph2 = (6.035804-7.093731)/(18.384572-18.204549);
brake35mph = (1.013878-13.650503)/(21.951832-19.591742);
brake35mph2 = (8.024567-9.015447)/(20.631723-20.451737);
brake40mph = (1.059394-15.060981)/(20.295656-17.575656);
brake40mph2 = (8.092875-9.019177)/(18.915683-18.735818);

acceleration100 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

point1 = [11.899499,1.480823];   point2 = [12.139462,0.732414];
point3 = [11.859419,1.569900];   point4 = [12.239466,0.317064];
brake5mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake5mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [11.465115,3.557105];   point2 = [11.685085,2.422789];
point3 = [11.445122,3.626713];   point4 = [12.025147,0.740117];
brake10mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake10mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [11.523438,5.376516];   point2 = [11.723462,4.285010];
point3 = [11.423462,5.742216];   point4 = [12.263439,1.031892];
brake15mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake15mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [14.603330,7.019309];   point2 = [14.723286,6.363692];
point3 = [14.343355,7.844131];   point4 = [15.483233,1.694061];
brake20mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake20mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [19.256861,9.011877];   point2 = [19.496758,7.710627];
point3 = [19.056753,9.760914];   point4 = [20.396765,2.392165];
brake25mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake25mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [17.444560,11.478544];   point2 = [17.684599,10.146400];
point3 = [17.324610,12.000106];   point4 = [19.084523,1.920340];
brake30mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake30mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [19.651875,13.345065];   point2 = [19.851725,12.301802];
point3 = [19.511803,14.046596];   point4 = [21.731714,2.062785];
brake35mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake35mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));

point1 = [17.355789,16.065428];   point2 = [17.575656,15.060981];
point3 = [17.175741,16.651169];   point4 = [19.975815,2.495466];
brake40mph = (point2(2)-point1(2))/(point2(1)-point1(1));
brake40mph2 = (point4(2)-point3(2))/(point4(1)-point3(1));


acceleration1002 = [brake5mph, brake10mph, brake15mph, brake20mph, brake25mph, brake30mph, brake35mph, brake40mph];

plot(velocity, acceleration1002, 'color', [0 0.7490 1.0], 'linestyle', '-', 'marker', 'o')
legend('0% Brake', '50% Brake', '60% Brake','70% Brake','80% Brake','90% Brake','100% Brake')


