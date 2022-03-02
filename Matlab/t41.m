figure;
xlabel('x');
ylabel('y');
zlabel('z');
   
%Plot-3D Points 
% plot3(P1.x,P1.y,P1.z,'color','r','LineWidth',4);
% hold on;
% grid on;
% plot3(P2.x,P2.y,P2.z,'color','b');
% hold on;
% plot3(P3.x,P3.y,P3.z,'color','r','LineWidth',4);
% hold on;
% plot3(P5.x,P5.y,P5.z,'color','r');
% hold on;
% plot3(P6.x,P6.y,P6.z,'color','r','LineWidth',4);
% hold on;
% 
% plot3(P7.x,P7.y,P7.z,'color','r','LineWidth',4);
% hold on;
% grid on;
% plot3(P8.x,P8.y,P8.z,'color','r');
% hold on;
% plot3(P10.x,P10.y,P10.z,'color','r','LineWidth',4);
% hold on;
% plot3(P11.x,P11.y,P11.z,'color','b');
% hold on;
% plot3(P12.x,P12.y,P12.z,'color','r','LineWidth',4); 
% hold on;

%Foot Length;
F1.x2 = 2.4;
F1.x1 = 2.4;
F1.y1 = 4;
F1.y2 = 2;

F2.x2 = 2.4;
F2.x1 = 2.4;
F2.y1 = 4;
F2.y2 = 2;
L=4;
for i=1:100
PF1.x(i) = P0.x(i) + F1.x1;
PF1.y(i) = P0.y(i) + F1.y1;
PF1.z(i) = P0.z(i);

PF2.x(i) = P0.x(i) + F1.x1;
PF2.y(i) = P0.y(i) - F1.y2;
PF2.z(i) = P0.z(i);

PF3.x(i) = P0.x(i) - F1.x2;
PF3.y(i) = P0.y(i) - F1.y2;
PF3.z(i) = P0.z(i);

PF4.x(i) = P0.x(i) - F1.x2;
PF4.y(i) = P0.y(i) + F1.y1;
PF4.z(i) = P0.z(i);

PF5.x(i) = P12.x(i) + F2.x1;
PF5.y(i) = P12.y(i) + F2.y2;
PF5.z(i) = P12.z(i)-L;

PF6.x(i) = P12.x(i) + F2.x1;
PF6.y(i) = P12.y(i) - F2.y1;
PF6.z(i) = P12.z(i)-L;

PF7.x(i) = P12.x(i) - F2.x2;
PF7.y(i) = P12.y(i) - F2.y1;
PF7.z(i) = P12.z(i)-L;

PF8.x(i) = P12.x(i) - F2.x2;
PF8.y(i) = P12.y(i) + F2.y2;
PF8.z(i) = P12.z(i)-L;
end

%Plot-3D Line through Points

for i = 1:2:100
   x9 = [P0.x(i),P1.x(i)];
   y9 = [P0.y(i),P1.y(i)];
   z9 = [P0.z(i),P1.z(i)]; 
   
   x0 = [P1.x(i),P2.x(i)];
   y0 = [P1.y(i),P2.y(i)];
   z0 = [P1.z(i),P2.z(i)];
   
   x1 = [P2.x(i),P3.x(i)];
   y1 = [P2.y(i),P3.y(i)];
   z1 = [P2.z(i),P3.z(i)];
   
   x2 = [P3.x(i),P5.x(i)];
   y2 = [P3.y(i),P5.y(i)];
   z2 = [P3.z(i),P5.z(i)];
   
   x3 = [P5.x(i),P6.x(i)];
   y3 = [P5.y(i),P6.y(i)];
   z3 = [P5.z(i),P6.z(i)];
   
   x4 = [P6.x(i),P7.x(i)];%?ai hông
   y4 = [P6.y(i),P7.y(i)];%?ai hông
   z4 = [P6.z(i),P7.z(i)];%?ai hông
   
   x = [P13.x(i),P14.x(i)];%thân trên
   y = [P13.y(i),P14.y(i)];%thân trên
   z = [P13.z(i),P14.z(i)];%thân trên
   
   x5 = [P7.x(i),P8.x(i)];
   y5 = [P7.y(i),P8.y(i)];
   z5 = [P7.z(i),P8.z(i)];
   
   x6 = [P8.x(i),P10.x(i)];
   y6 = [P8.y(i),P10.y(i)];
   z6 = [P8.z(i),P10.z(i)];
  
   x7 = [P10.x(i),P11.x(i)];
   y7 = [P10.y(i),P11.y(i)];
   z7 = [P10.z(i),P11.z(i)];
   
   x8 = [P11.x(i),P12.x(i)];
   y8 = [P11.y(i),P12.y(i)];
   z8 = [P11.z(i),P12.z(i)];
   
   x10 = [P12.x(i),P15.x(i)];
   y10 = [P12.y(i),P15.y(i)];
   z10 = [P12.z(i),P15.z(i)]; 
   
   d1.x = [PF1.x(i),PF2.x(i)];
   d2.x = [PF2.x(i),PF3.x(i)];
   d3.x = [PF3.x(i),PF4.x(i)];
   d4.x = [PF4.x(i),PF1.x(i)];
   
   d1.y = [PF1.y(i),PF2.y(i)];
   d2.y = [PF2.y(i),PF3.y(i)];
   d3.y = [PF3.y(i),PF4.y(i)];
   d4.y = [PF4.y(i),PF1.y(i)];
   
   d1.z = [PF1.z(i),PF2.z(i)];
   d2.z = [PF2.z(i),PF3.z(i)];
   d3.z = [PF3.z(i),PF4.z(i)];
   d4.z = [PF4.z(i),PF1.z(i)];
   
   d5.x = [PF5.x(i),PF6.x(i)];
   d6.x = [PF6.x(i),PF7.x(i)];
   d7.x = [PF7.x(i),PF8.x(i)];
   d8.x = [PF8.x(i),PF5.x(i)];
   
   d5.y = [PF5.y(i),PF6.y(i)];
   d6.y = [PF6.y(i),PF7.y(i)];
   d7.y = [PF7.y(i),PF8.y(i)];
   d8.y = [PF8.y(i),PF5.y(i)];
   
   d5.z = [PF5.z(i),PF6.z(i)];
   d6.z = [PF6.z(i),PF7.z(i)];
   d7.z = [PF7.z(i),PF8.z(i)];
   d8.z = [PF8.z(i),PF5.z(i)];
   pause(0.05);
   
plot3(x9,y9,z9,'color','b');
  
   hold on;
   grid on;
   plot3(x0,y0,z0,'color','b');
   plot3(x1,y1,z1,'color','b');
   plot3(x2,y2,z2,'color','b');
   plot3(x3,y3,z3,'color','b');
   plot3(x4,y4,z4,'color','r');%dai hông
   plot3(x5,y5,z5,'color','g');
   plot3(x6,y6,z6,'color','g');
   plot3(x7,y7,z7,'color','g');
   plot3(x8,y8,z8,'color','g');
   plot3(x10,y10,z10,'color','g');
   plot3(x,y,z,'color','r');%thân trên
%   if (i==1 ||i==101)
    plot3(d1.x,d1.y,d1.z,'b');
    plot3(d2.x,d2.y,d2.z,'b');
    plot3(d3.x,d3.y,d3.z,'b');
    plot3(d4.x,d4.y,d4.z,'b');
    plot3(d5.x,d5.y,d5.z,'g');
    plot3(d6.x,d6.y,d6.z,'g');
    plot3(d7.x,d7.y,d7.z,'g');
    plot3(d8.x,d8.y,d8.z,'g');
%   end
%      hold off;

   if (i>=30 && i <= 70)
    plot3(zmp.x(i),zmp.y(i),0 , '*m');
   else
    plot3(zmp.x(i),zmp.y(i),0 , '*c');
   end
plot3(com.x(i),com.y(i),com.z(i), '*k');
% plot3(zmp.x(i),zmp.y(i),0 , '*m');
%    if (i>=17 && i <= 80)
%     
%     plot3(zmp.x(i),zmp.y(i),0 , '*m');
%    end
end
   xlabel('x');
   ylabel('y');
   zlabel('z');
   axis([-30 30 -25 15 0 25]);
   
%   hold off;
figure;
plot(zmp.x,zmp.y,'*b');
hold on;
plot(com.x,com.y,'*r');
