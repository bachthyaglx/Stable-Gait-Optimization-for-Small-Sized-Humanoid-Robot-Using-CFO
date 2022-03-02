g=980;
PP1x_dd = giatoc(PP1.x);
PP2x_dd = giatoc(PP2.x);
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

% plot(zmp.x,zmp.y,'*b');