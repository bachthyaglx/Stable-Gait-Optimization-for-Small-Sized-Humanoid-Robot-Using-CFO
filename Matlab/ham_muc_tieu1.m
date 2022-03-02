function j = ham_muc_tieu1(x)
d1.x=zeros(1,98);
d1.y=zeros(1,98);
zmp1.x=zeros(1,98);
zmp1.y=zeros(1,98);
S=x(1);
H=x(2);
h=x(3);
n=x(4);
t1=x(5);
t2=x(6);
[P0,P6,P12]=phat_quy_dao(S,H,h,n,t1,t2);
[deta1,deta2,deta3,deta4,deta5,deta6,deta7,deta8,deta9,deta10,deta11,deta12] = dong_hoc_nguoc(P0,P6,P12);
[P1,P2,P3,P5,P6,P7,P8,P10,P11,P12] = dong_hoc_thuan(deta1,deta2,deta3,deta4,deta5,deta6,deta7,deta8,deta9,deta10,deta11,deta12);
[com,zmp] = khoi_tam(P1,P2,P3,P5,P6,P7,P8,P10,P11,P12);

t = (0.01:0.01:1)';
d.x=5*t-2.5;
d.y=-3+3*sin(pi*t);

% for i=1:98
%     zmp1.x(i)=zmp.x(i+1);
%     zmp1.y(i)=zmp.y(i+1);
%     d1.x(i)=d.x(i+1);
%     d1.y(i)=d.y(i+1);
% end
%     
% j = (d1.x' - zmp1.x)*(d1.x' - zmp1.x)' + (d1.y' - zmp1.y)*(d1.y' - zmp1.y)';

j = (d.x' - zmp.x)*(d.x' - zmp.x)' + (d.y' - zmp.y)*(d.y' - zmp.y)';
% j = (d.x' - com.x)*(d.x' - com.x)' + (d.y' - com.y)*(d.y' - com.y)';

% k(1) = sqrt((zmp.x)*(zmp.x)' + (zmp.y)*(zmp.y)');
% k(2)=1/x(1); 
% j=0.5*k(1)+0.5*k(2);
end
