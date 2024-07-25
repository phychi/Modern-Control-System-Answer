K=[10, 12, 15];
t=0:0.01:15;
ng=[20]; dg=[1 4.5 64]; sysg=tf(ng,dg);
nh=[1]; dh=[1 1]; sysh=tf(nh,dh);
for i=1:length(K)
    sys=K(i)*sysg;
    syscl=feedback(sys,sysh)
    y(:,i)= step(syscl,t);
end
plot(t,y(:,1),t,y(:,2),'--',t,y(:,3),':')
xlabel('Time (s)')
ylabel('Step response')
legend('K=10','K=12','K=15');
