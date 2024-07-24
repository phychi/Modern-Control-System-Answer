ng=[1 1]; dg=[1 2]; sysg = tf(ng,dg);
nh=[1]; dh=[1 1]; sysh = tf(nh,dh);
sys=feedback(sysg,sysh)
%(b)零极点位置
pzmap(sys)
pole(sys)
zero(sys)
%(c)零极点对消
sys_minreal = minreal(sys)
