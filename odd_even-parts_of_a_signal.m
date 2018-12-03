%%odd and even parts
n=-25:25;
unitstep= n>=0;   %unitstep function u(n)
unitstep2= n>=10;  %delayed unitstep function u(n-10)
unitstep3=unitstep-unitstep2;   %u(n)-u(n-10)
figure(1)
subplot(3,1,1)
stem(n,unitstep3)
xe=0.5*(unitstep3+fliplr(unitstep3));
subplot(3,1,2)
stem(n,xe);
xo=0.5*(unitstep3-fliplr(unitstep3));
subplot(3,1,3)
stem(n,xo);