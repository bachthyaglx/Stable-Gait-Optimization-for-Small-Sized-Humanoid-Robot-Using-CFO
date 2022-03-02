function [com,zmp] = khoi_tam(P1,P2,P3,P5,P6,P7,P8,P10,P11,P12)
clearvars -except P1 P2 P3 P5 P6 P7 P8 P10 P11 P12 
M = [115 70 100 120 450 120 100 110 115];
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
PPM.z = (P6.z + P7.z)/2 + 14;

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

PP1x_dd = giatoc(PP1.x);
PP2x_dd = giatoc(PP2.x);
% figure;
% plot(com.x,com.y,'r');
% hold on;

PP3x_dd = giatoc(PP3.x);
PP5x_dd = giatoc(PP5.x);
PPMx_dd = giatoc(PPM.x);
PP7x_dd = giatoc(PP7.x);
PP8x_dd = giatoc(PP8.x);
PP10x_dd = giatoc(PP10.x);
PP11x_dd = giatoc(PP11.x);

PP1y_dd = giatoc(PP1.y);
PP2y_dd = giatoc(PP2.y);
PP3y_dd = giatoc(PP3.y);
PP5y_dd = giatoc(PP5.y);
PPMy_dd = giatoc(PPM.y);
PP7y_dd = giatoc(PP7.y);
PP8y_dd = giatoc(PP8.y);
PP10y_dd = giatoc(PP10.y);
PP11y_dd = giatoc(PP11.y);

PP1z_dd = giatoc(PP1.z)+g;
PP2z_dd = giatoc(PP2.z)+g;
PP3z_dd = giatoc(PP3.z)+g;
PP5z_dd = giatoc(PP5.z)+g;
PPMz_dd = giatoc(PPM.z)+g;
PP7z_dd = giatoc(PP7.z)+g;
PP8z_dd = giatoc(PP8.z)+g;
PP10z_dd = giatoc(PP10.z)+g;
PP11z_dd = giatoc(PP11.z)+g;

PPx_dd = [PP1x_dd; PP2x_dd; PP3x_dd; PP5x_dd; PPMx_dd; PP7x_dd; PP8x_dd; PP10x_dd; PP11x_dd];
PPy_dd = [PP1y_dd; PP2y_dd; PP3y_dd; PP5y_dd; PPMy_dd; PP7y_dd; PP8y_dd; PP10y_dd; PP11y_dd];
PPz_dd = [PP1z_dd; PP2z_dd; PP3z_dd; PP5z_dd; PPMz_dd; PP7z_dd; PP8z_dd; PP10z_dd; PP11z_dd];

zmp.x = (M*(PPx.*PPz_dd)-M*(PPz.*PPx_dd))./(M*PPz_dd);
zmp.y = (M*(PPy.*PPz_dd)-M*(PPz.*PPy_dd))./(M*PPz_dd);

% plot(zmp.x,zmp.y,'b');
end

