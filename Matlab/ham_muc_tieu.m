function j = ham_muc_tieu(x)
S=x(1);
H=x(2);
h=x(3);
n=x(4);
t1=x(5);
t2=x(6);
[P0,P6,P12]=phat_quy_dao(S,H,h,n,t1,t2);

% [P0,P6,P12]=phat_quy_dao(S,H,h,n);
[deta1,deta2,deta3,deta4,deta5,deta6,deta7,deta8,deta9,deta10,deta11,deta12] = dong_hoc_nguoc(P0,P6,P12);
[P1,P2,P3,P5,P6,P7,P8,P10,P11,P12] = dong_hoc_thuan(deta1,deta2,deta3,deta4,deta5,deta6,deta7,deta8,deta9,deta10,deta11,deta12);
[com,zmp] = khoi_tam(P1,P2,P3,P5,P6,P7,P8,P10,P11,P12);


j(1) = sqrt((zmp.x)*(zmp.x)' + (zmp.y)*(zmp.y)');
j(2)=1/x(1); 
% j=0.5*k(1)+0.5*k(2);
end