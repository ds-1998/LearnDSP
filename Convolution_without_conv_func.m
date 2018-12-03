%Generalised convolution without using conv function
x=input('Enter x:  ')
h=input('Enter h;  ')
m=length(x);
n=length(h);
X=[x,zeros(1,n)];
H=[h,zeros(1,m)];
figure(1)
for k=1:n+m-1
    Y(k)=0;
    for u=1:m
        if(k-u+1>0)
            Y(k)=Y(k)+X(u)*H(k-u+1);
        end
        
    end
    subplot(1,n+m-1,k)
        stem(k,Y(k));
end
figure(2)
stem(Y);
ylabel('Y[n]');
xlabel('-------->n');
title('Convolution of two signals without using conv function');