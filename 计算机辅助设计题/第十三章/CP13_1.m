numerator = [0.2145,0.1609];
denominator = [1,-0.75,0.125];
sys = tf(numerator,denominator,1);%第三个参数为采样时间
step(sys,0:1:20);
