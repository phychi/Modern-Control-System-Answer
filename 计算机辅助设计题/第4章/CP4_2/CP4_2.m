num=4;
den=[1 2 20];
sys=tf(num,den);
t=0:0.05:10;
y=step(sys,t);
step(sys,t);
yss=1-y(length(t));%单位阶跃信号的稳态值为0.2，即稳态误差为0.8
