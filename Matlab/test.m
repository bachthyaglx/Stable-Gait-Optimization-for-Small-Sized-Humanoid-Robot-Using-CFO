% x=[20 1.3 1.3 6 0.25 0.75];
% a = ham_muc_tieu1(x);
% S=20; H=1.3; h=1.3; n=6; t1=0.25; t2=0.75;
% [P0,P6,P12]=phat_quy_dao(S,H,h,n,t1,t2);

t = (0.01:0.01:1)';
d.x=5*t-2.5;
d.y=-3+3*sin(pi*t);
c = struct2cell(optimresults);
x=c{1,1};
[m,n]=size(x);
for i=1:m
    for j=1:n
        y(1,j)=x(i,j);
    end
    f = ham_muc_tieu1(y);
%     f = ham_muc_tieu(y);
    plot(d.x,d.y,'k');
end
