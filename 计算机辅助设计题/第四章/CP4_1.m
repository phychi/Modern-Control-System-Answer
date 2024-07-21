num=20;
den=[1 4 20];
sys=tf(num,den);
t=0:0.01:5;
y=step(sys,t);
step(sys,t);
yss=1-y(length(t));%稳态值为1，即误差为0
overtone=max(y)-1;%超调量
