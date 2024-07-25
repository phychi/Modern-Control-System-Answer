% Chapter 11: The Design of State Variable Feedback Systems
% CP11.1
%
A=[-6 2 0;4 0 7;-10 1 11];
B=[5;0;1];
C=[1 2 1];
D=0;
%
Pc=ctrb(A,B); Det_Pc=det(Pc)
Q=obsv(A,C); Det_Q=det(Q)
