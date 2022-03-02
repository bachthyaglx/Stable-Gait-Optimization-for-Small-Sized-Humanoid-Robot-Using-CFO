function [P0, P6, P12] = phat_quy_dao(S,H,h,n,t1,t2)
d1 = 4.25;
d2 = 9.86;
d3 = 8.06;
d4 = 4.15;
W  = 8.64;
% t1=0.25;
% t2=0.75;
T=1;
i=0;
P0x=zeros(101,1);P0y=zeros(101,1);P0z=zeros(101,1);
P6x=zeros(101,1);P6y=zeros(101,1);P6z=zeros(101,1);
P12x=zeros(101,1);P12y=zeros(101,1);P12z=zeros(101,1);
    for t=0:0.01:T
        i=i+1;
        P0x(i)=0;
        P0y(i)=0;
        P0z(i)=0;
        
        P12x(i)=(S/2)*sin((pi/T)*(t-T/2));
        P12y(i)=-W;
        P12z(i)=H*sin(pi*(P12x(i)/S+0.5));
        
        P6x(i)=(S/4)*sin((pi/T)*(t-T/2));
%         P6y(i)=n*sin((pi/2)*(sin((t*pi)/(2*T))+1))*sin(pi*t/T);
        P6y(i)=n*sin(pi/(2*t1)*t)*(u(t)-u(t-t1))...
             +n*(u(t-t1)-u(t-t2))...
             +n*cos(pi/(2*(T-t2))*(t-t2))*(u(t-t2)-u(t-T));

% P6y=n*sin(pi/(2*t1)*tt(t,T))*(u(tt(t,T))-u(tt(t,T)-t1))...
% +n*(u(tt(t,T)-t1)-u(tt(t,T)-t2))...
% +n*cos(pi/(2*(T-t2))*(tt(t,T)-t2))*(u(tt(t,T)-t2)-u(tt(t,T)-T));

        P6z(i)=d1+d2+d3+d4-h;
    end
P0 = [P0x,P0y,P0z];
P6 = [P6x,P6y,P6z];
P12 = [P12x,P12y,P12z];
end
function ti=u(t)
    if (t>=0)
        ti=1;
    else
        ti=0;
    end
end
