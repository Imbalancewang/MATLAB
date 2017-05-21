%对交易量异常的判断
%二月份为例
load B;
lambda=1;
for i=1:1440
    if time(i)>=0 & time(i)<=300
        y(i)=0.0013*time(i).^2-0.5946*time(i)+81.203;
    elseif time(i)>=301 & time(i)<=700
        y(i)=-9e-05*time(i).^3+0.1318*time(i).^2-56.811*time(i)+7720.4
    elseif time(i)>=701 & time(i)<=800
        y(i)=2e-05*time(i).^4-0.0638*time(i).^3+71.187*time(i).^2-352898*time(i)+7e-06;    
    else 
        y(i)=1e-05*time(i).^3-0.042*time(i).^2+49.067*time(i)-177220;
    end
end
judge=zeros(40320,1);
for i=1:28
    for j=1:1440
        if Febob(1440*(i-1)+j)<(y(j)*0.9*lambda-20)
            judge(1440*(i-1)+j)=0;
        else
            judge(1440*(i-1)+j)=1;
        end
    end
end
%judge矩阵元素1为正常0为异常；
