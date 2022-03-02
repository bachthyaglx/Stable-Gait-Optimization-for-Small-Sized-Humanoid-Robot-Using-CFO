% %Ma tran 2 chu ky
% deta(:,1)=[deta1';-deta12'];
% deta(:,2)=[deta2';deta11'];
% deta(:,3)=[deta3';deta10'];
% deta(:,4)=[deta4';deta9'];
% deta(:,5)=[deta5';deta8'];
% deta(:,6)=[deta6';deta7'];
% deta(:,7)=[deta7';deta6'];
% deta(:,8)=[deta8';deta5'];
% deta(:,9)=[deta9';deta4'];
% deta(:,10)=[deta10';deta3'];
% deta(:,11)=[deta11';deta2'];
% deta(:,12)=[deta12';-deta1'];

%Bu sai so
deta(:,1)= [deta1';-deta12'] + Deta1*pi/180;
deta(:,2)= [deta2';deta11'] + Deta2*pi/180;
deta(:,3)= [deta3';deta10'] + Deta3*pi/180;
deta(:,5)= [deta5';deta8'] - Deta5*pi/180;
deta(:,6)= [deta6';deta7'] - Deta6*pi/180;
deta(:,7)= [deta7';deta6'] + Deta7*pi/180;
deta(:,8)= [deta8';deta5'] + Deta8*pi/180;
deta(:,10)= [deta10';deta3'] + Deta10*pi/180;
deta(:,11)= [deta11';deta2'] - Deta11*pi/180;
deta(:,12)= [deta12';-deta1'] + Deta12*pi/180;

clearvars -except deta 
save('deta.mat','deta')

