%Newton method
%compute the solution of x-cosx=0;
size=100;%the numbers of iteration;
init=pi;%the value you want;
x=zeros(size,1);
y=zeros(size,1);
deritive=zeros(size,1);
x(1)=pi;
y(1)=x(1)-cos(x(1));
deritive(1)=1+sin(x(1));
i=2;
error=1e-6;
while 1
    x(i)=x(i-1)-y(i-1)/deritive(i-1);
    if abs(x(i)-x(i-1))<error
        break;
    end
    y(i)=x(i)-cos(x(i));
    deritive(i)=1+sin(x(i));
    i=i+1;
end
xx=-pi:0.01:pi;
yy=xx-cos(xx);
plot(xx,yy);
hold on;
grid on;
plot(x(i),y(i),'*');