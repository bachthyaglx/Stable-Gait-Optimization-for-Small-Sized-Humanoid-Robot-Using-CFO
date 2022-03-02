clearvars -except deta1 deta2 deta3 deta4 deta5 deta6 deta7 deta8 deta9 deta10 deta11 deta12
d8 =4.15;d4=4.15;
d9 =8.06;d3=8.06;
d10=9.86;d2=9.86;
d11=4.25;d1=4.25;
w=8.64;
L=4;
d0=5.5;
for i=1:100
        P0.x(i)=0;
        P0.y(i)=0;
        P0.z(i)=0;
    
        P1.x(i) = P0.x(i);
        P1.z(i) = P0.z(i)+L;
        P1.y(i) = P1.z(i)*sin(deta1(i));
        
        P2.x(i) = P1.x(i);
        P2.z(i) = P1.z(i)+d1*cos(deta1(i));
        P2.y(i) = P2.z(i)*sin(deta1(i));

        P3.x(i) = d2*sin(deta2(i));
        P3.z(i) = P2.z(i) + d2*cos(deta2(i))*cos(deta1(i));
        P3.y(i) = P3.z(i)*sin(deta1(i));

        P5.x(i) = P3.x(i) + d3*sin(deta2(i)-deta3(i));
        P5.z(i) = P3.z(i) + d3*cos(deta2(i)-deta3(i))*cos(deta1(i));
        P5.y(i) = P5.z(i)*sin(deta1(i));

        P6.x(i) = P5.x(i) + d4*sin(deta2(i)-deta3(i)+deta5(i));
        P6.z(i) = P5.z(i) + d4*cos(deta2(i)-deta3(i)+deta5(i))*cos(deta1(i));
        P6.y(i) = P6.z(i)*sin(deta1(i));

        %%%%%%%%%%
        P13.x(i)=P6.x(i);
        P13.y(i)=P6.y(i) - w/2;
        P13.z(i)=P6.z(i);
        P14.x(i)=P6.x(i);
        P14.y(i)=P6.y(i) - w/2;
        P14.z(i)=P6.z(i)+d0;
        %%%%%%%%%%
        
        P7.x(i) = P6.x(i);
        P7.y(i) = P6.y(i) - w;
        P7.z(i) = P6.z(i);

        P8.x(i) = P7.x(i);
        P8.z(i) = P7.z(i) - d8*cos(deta7(i));
        P8.y(i) = P7.y(i) - (P7.z(i)-P8.z(i))*sin(deta7(i));

        P10.x(i) = P8.x(i) + d9*sin(deta8(i));
        P10.z(i) = P8.z(i) - d9*cos(deta8(i))*cos(deta7(i));
        P10.y(i) = P7.y(i) - (P7.z(i)-P10.z(i))*sin(deta7(i));

        P11.x(i) = P10.x(i) + d10*sin(deta8(i)-deta10(i));
        P11.z(i) = P10.z(i) - d10*cos(deta8(i)-deta10(i))*cos(deta7(i));
        P11.y(i) = P7.y(i) - (P7.z(i)-P11.z(i))*sin(deta7(i));

        P12.x(i) = P11.x(i) + d11*sin(deta8(i)-deta10(i)+deta11(i));
        P12.z(i) = P11.z(i) - d11*cos(deta8(i)-deta10(i)+deta11(i))*cos(deta7(i));
        P12.y(i) = P7.y(i) - (P7.z(i)-P12.z(i))*sin(deta7(i));
        
        P15.x(i)=P12.x(i);
        P15.y(i)=P12.y(i);
        P15.z(i)=P12.z(i)-L;
end
