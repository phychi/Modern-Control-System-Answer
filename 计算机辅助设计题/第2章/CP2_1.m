p=[1 8 12];
q=[1 2];
%p乘q得到的多项式系数
pq=conv(p,q)
%极点P和零点Z
P=roots(p),Z=roots(q)
%带入-1获得值
value=polyval(p,-1)