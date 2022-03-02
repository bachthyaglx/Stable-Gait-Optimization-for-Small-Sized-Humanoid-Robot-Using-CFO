function [deta1,deta2,deta3,deta4,deta5,deta6,deta7,deta8,deta9,deta10,deta11,deta12] = dong_hoc_nguoc(P0,P6,P12)
d8 =4.15;d4=4.15;
d9 =8.06;d3=8.06;
d10=9.86;d2=9.86;
% d9 =6.0;d3=6.0;
% d10=4.5;d2=4.5;
d11=4.25;d1=4.25;
w=8.64;
for i=1:100   
    P0x(i) = P0(i,1);
    P0y(i) = P0(i,2);
    P0z(i) = P0(i,3);
    P6x(i) = P6(i,1);
    P6y(i) = P6(i,2);
    P6z (i)= P6(i,3);
    P12x(i) = P12(i,1);
    P12y(i) = P12(i,2);
    P12z(i) = P12(i,3);   
end

for i=1:100
    x_l(i)=P6x(i);
    y_l(i)=P6y(i);
    z_l(i)=P6z(i);
    deta01(i)=atan2(y_l(i),z_l(i));
    
    P2x(i) = P0x(i);
    P2z(i) = d1*cos(deta01(i));
    P2y(i) = P2z(i)*sin(deta01(i));
    
    P5x(i) = P6x(i);
    P5z(i) = P6z(i) - d4*cos(deta01(i));
    P5y(i) = P6y(i) - (P6z(i)-P5z(i))*sin(deta01(i));
    
    x_l1(i)=P5x(i)-P2x(i);
    y_l1(i)=P5y(i)-P2y(i);
    z_l1(i)=P5z(i)-P2z(i);

    l_l(i)=sqrt(x_l1(i)*x_l1(i)+y_l1(i)*y_l1(i)+z_l1(i)*z_l1(i));

    P7x(i) = P6x(i);
    P7y(i) = P6y(i)-w;
    P7z(i) = P6z(i);
    
    x_r(i)=P7x(i)-P12x(i);
    y_r(i)=P7y(i)-P12y(i);
    z_r(i)=P7z(i)-P12z(i);
    
    deta012(i)=atan2(y_r(i),z_r(i));
    
    P8x(i) = P7x(i);
    P8z(i) = P7z(i) - d8*cos(deta012(i));
    P8y(i) = P7y(i) - (P7z(i)-P8z(i))*sin(deta012(i));

    P11x(i) = P12x(i);
    P11z(i) = P12z(i)+d11*cos(deta012(i));
    P11y(i) = P12y(i)+(P11z(i)-P12z(i))*sin(deta012(i));

    x_r1(i)=P8x(i)-P11x(i);
    y_r1(i)=P8y(i)-P11y(i);
    z_r1(i)=P8z(i)-P11z(i);

    l_r(i)=sqrt(x_r1(i)*x_r1(i)+y_r1(i)*y_r1(i)+z_r1(i)*z_r1(i));

    detaA(i)=acos((d2*d2+d3*d3-l_l(i)*l_l(i))/(2*d2*d3));
    detaB(i)=acos(d3*sin(detaA(i))/l_l(i));
    detaC(i)=acos((d10*d10+d9*d9-l_r(i)*l_r(i))/(2*d10*d9));
    detaD(i)=acos(d9*sin(detaC(i))/l_r(i));
    
    deta1(i)=atan2(y_l(i),z_l(i));
    deta6(i)=-deta1(i);
    deta5(i)=pi/2 - detaA(i) + detaB(i) - asin(x_l1(i)/l_l(i));
    deta3(i)=pi-detaA(i);
    deta2(i)=(deta3(i) - deta5(i));
    deta10(i)=pi-detaC(i);
    deta8(i)=pi/2 - detaC(i) + detaD(i) - asin(x_r1(i)/l_r(i));
    deta12(i)=atan2(y_r(i),z_r(i));
    deta7(i)=deta12(i);
    deta11(i)=(deta10(i) - deta8(i));
    deta4(i)=0;
    deta9(i)=0; 
end
end
