 L=0.5; m=1; g=9.8;
 theta0=30;
 % Linear simulation
 sys=tf([1 0 0],[1 0 g/L]);
 [y,t]=step(theta0*sys,[0:0.01:10]);
 % Nonlinear simulation
 [t,ynl]=ode45(@pend,t,[theta0*pi/180 0]);   
plot(t,ynl(:,1)*180/pi,t,y,'--');
 xlabel('Time (s)')
 ylabel('\theta (deg)')
 function [yd]=pend(t,y)
 L=0.5; g=9.8;
 yd(1)=y(2);
 yd(2)=-(g/L)*sin(y(1));
 yd=yd';