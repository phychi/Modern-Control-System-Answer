num=[1 10];
den=[1 15 0 0];
sys=tf(num,den);
sys_cl=feedback(sys,1);%单位负反馈
t=0:0.1:50;
u=t;%输入
lsim(sys,u,t);
%显然稳态误差无穷大
