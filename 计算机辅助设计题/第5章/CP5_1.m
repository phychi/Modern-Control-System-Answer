num=20; den=[1 9 20];
t=0:0.05:5;
ya=20*exp(-4.*t)-20*exp(-5.*t);%解析得到表达式
sys = tf(num,den)
y=impulse(sys,t);
plot(t,y,t,ya,'.');
xlabel('时间 (sec)'), ylabel('脉冲响应'), legend('Computer','Analytic');
