A=[0 1;-1 -15];
B=[0;20];
C=[8 0];
D=0;
sys=ss(A,B,C,D);
figure(1);
nyquist(sys);%9_8
figure(2)
nichols(sys);%9_9
ngrid;
