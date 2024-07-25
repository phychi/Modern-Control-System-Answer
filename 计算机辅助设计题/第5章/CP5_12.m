num=77*[1 2]; den=conv([1 7],[1 4 22]);
sys = tf(num,den);
na=(77/7)*[1 2]; da=[1 4 22];
sysa=tf(na,da);%忽略s=-7极点后的近似系统
t=0:0.01:5;
y=step(sys,t);
ya=step(sysa,t);
plot(t,y,t,ya,'--')
xlabel('Time (s)'), ylabel('Step response');
po1=max(y)-1;po2=max(ya)-1;
%由图像可以得到调整时间为2.28s和2.16s