function [yd]=pend(t,y)
 L=0.5; g=9.8;
 yd(1)=y(2);
 yd(2)=-(g/L)*sin(y(1));
 yd=yd';
end