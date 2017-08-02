%compute pow(x,1/n);
%also to say f(x)=x^n-a solution
%for example we compute the value of 9^(1/6);
n=5;
a=9;
error=1e-6;
size=100;
x=zeros(size,1);
y=zeros(size,1);
deritive=zeros(size,1);
x(1)=1;
y(1)=x(1)^n-a;
deritive(1)=n*x(1)^(n-1);
i=2;
while 1
    x(i)=x(i-1)-y(i-1)/deritive(i-1);
    if abs(x(i)-x(i-1))<error
        break;
    end
    y(i)=x(i)^n-a;
    deritive(i)=n*x(i)^(n-1);
    i=i+1;
end
disp(x(i));