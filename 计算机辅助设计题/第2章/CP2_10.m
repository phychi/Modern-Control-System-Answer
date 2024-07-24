num = 1;
den = [1 20 20];
t=0:0.01:5;
% Step 1: Define the open-loop transfer function
Go = tf(num, den);
y_end=zeros(2,length(0:0.1:10));
for k=0:1:100
    % Step 2: Compute the closed-loop transfer function G(s)
    K=k/10;
    G1 = K * Go / (1 + K * Go);
    G2 = Go / (1 + K * Go);

    % Step 3: Calculate the steady-state value of the step response
    y1= step(G1,t);
    y2= step(G2,t);
    y_end(:,k+1)=[y1(end) y2(end)];
end
plot(0:0.1:10,y_end);
%根据图像K=1时两个稳态值相等
