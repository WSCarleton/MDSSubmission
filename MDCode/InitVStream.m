doPlot = 1;
dt = 5e-15;
TStop = 3000 * dt;
InitDist = 0.0;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

Mass0 = 14 * C.am; % Silicon
Mass1 = 100 * C.am; % Argon
Mass2 = 50 * C.am; %New Mass

AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1 / 6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;

T = 30;

AddElipticalAtomicArray(10, 0, 0, 0, 0, 0, T, 0);
% vy0 = -sqrt(0.02*Ep/Mass1);
% AddRectAtomicArray(4,4,0,12*AtomSpacing,0,vy0,0,T,1);(pi/4 - -pi/4).*rand(1, 1)+ -pi/4
Ep = 10;
AddParticleStream(1, 0.1, 10, (-3*pi/4 - -pi/4).*rand(1, 1)+ -pi/4 , 1, Ep * C.q_0, 5);%Mass1 going down
AddParticleStream(1, 0.1, -10, (3*pi/4 - pi/4).*rand(1, 1)+ pi/4, 1, Ep * C.q_0, 5);%Mass1 going up
AddParticleStream(1, -15, 0, (pi/8 - -pi/8).*rand(1, 1)+ -pi/8, 2, Ep * C.q_0, 5);%Mass2 going right
AddParticleStream(1, 15, 0, (9*pi/8 - 7*pi/8).*rand(1, 1)+ 7*pi/8, 2, Ep * C.q_0, 5);%Mass2 going left
%(pi/4 - -pi/4).*rand(1, 1)+ -pi/4
%(3*pi/4 - -3*pi/4).*rand(1, 1)+ -3*pi/4

Size = 25*AtomSpacing;
Limits = [-Size +Size -Size +Size]; % square is good
PlDelt = 5 * dt;

PlotFile = 'BlockSt.gif';
PlotPosOnly = 1;
doPlotImage = 0;
PlotSize = [100, 100, 1049, 1049];

ScaleV = .02e-11;
ScaleF = 10;
