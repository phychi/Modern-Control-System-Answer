A=[0 1 0;0 0 1;-4 -1 -6];
B=[0;0;1];
C=[1 0 0];
D=0;
sys=ss(A,B,C,D);
sys_tf=tf(sys)%(a)问传递函数
x0=[0;-1;1];
t=0:0.1:10;
u=0*t;%ones(1,length(t));
[y,t,x]=lsim(sys,u,t,x0);
plot(t,x(:,1),t,x(:,2),"-.",t,x(:,3),"--");
xlabel("时间(s)");
ylabel("时间响应");
legend(["x1(t)","x2(t)","x3(t)"]);
grid on;
xf_sim=x(length(t),:);
dt=10;
Phi=expm(A*dt);
xf_phi=Phi*x0;