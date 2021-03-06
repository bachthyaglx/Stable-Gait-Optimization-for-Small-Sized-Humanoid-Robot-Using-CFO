clearvars -except P0 P1 P2 P3 P5 P6 P7 P8 P10 P11 P12 P13 P14 P15 deta1 deta2 deta3 deta4 deta5 deta6 deta7 deta8 deta9 deta10 deta11 deta12
M = [115 110 100 120 450 120 100 110 115];
g = 980;

PP1.x = (P1.x + P2.x)/2;
PP1.y = (P1.y + P2.y)/2;
PP1.z = (P2.z + P2.z)/2;

PP2.x = (P2.x + P3.x)/2;
PP2.y = (P2.y + P3.y)/2;
PP2.z = (P2.z + P3.z)/2;

PP3.x = (P3.x + P5.x)/2;
PP3.y = (P3.y + P5.y)/2;
PP3.z = (P3.z + P5.z)/2;

PP5.x = (P5.x + P6.x)/2;
PP5.y = (P5.y + P6.y)/2;
PP5.z = (P5.z + P6.z)/2;

PPM.x = (P6.x + P7.x)/2;
PPM.y = (P6.y + P7.y)/2;
PPM.z = (P6.z + P7.z)/2 + 6;

PP7.x = (P7.x + P8.x)/2;
PP7.y = (P7.y + P8.y)/2;
PP7.z = (P7.z + P8.z)/2;

PP8.x = (P8.x + P10.x)/2;
PP8.y = (P8.y + P10.y)/2;
PP8.z = (P8.z + P10.z)/2;

PP10.x = (P10.x + P11.x)/2;
PP10.y = (P10.y + P11.y)/2;
PP10.z = (P10.z + P11.z)/2;

PP11.x = (P11.x + P12.x)/2;
PP11.y = (P11.y + P12.y)/2;
PP11.z = (P11.z + P12.z)/2;

PPx = [PP1.x; PP2.x; PP3.x; PP5.x; PPM.x; PP7.x; PP8.x; PP10.x; PP11.x];
PPy = [PP1.y; PP2.y; PP3.y; PP5.y; PPM.y; PP7.y; PP8.y; PP10.y; PP11.y];
PPz = [PP1.z; PP2.z; PP3.z; PP5.z; PPM.z; PP7.z; PP8.z; PP10.z; PP11.z];

com.x = M*PPx/sum(M);
com.y = M*PPy/sum(M);
com.z = M*PPz/sum(M);

% figure;
% plot(com.x,com.y,'*r');
% hold on;

