A=[0 1;2 8];
B=[0;1];
C=[1 0];
D=0;
sys=ss(A,B,C,D);
sys_tf=tf(sys)
A2=[1 1 0;-2 0 4;5 4 -7];
B2=[-1;0;1];
C2=[0 1 0];
D2=0;
sys2=ss(A2,B2,C2,D2);
sys_tf2=tf(sys2)
A3=[0 1;-1 -2];
B3=[0;1];
C3=[-2 1];
D3=0;
sys3=ss(A3,B3,C3,D3);
sys_tf3=tf(sys3)