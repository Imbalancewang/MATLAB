% written by 王滨 选取122天 只有一些股票能让程序运行
clc %清屏，以使结果独立显示 
format long; %设置计算精度 
x=VarName2; %视具体情况改变变量名称 45lines
if length(x(:,1))==1 %对输入矩阵进行判断，如不是一维列矩阵，进行转置变换 
x=x'; 
end 
n=length(x); %取输入数据的样本量 
z=0; 
for i=1:n %计算累加值，并将值赋予矩阵be 
z=z+x(i,:); 
be(i,:)=z; 
end 
for i=2:n %对原始数列平行移位 
y(i-1,:)=x(i,:); 
end 
for i=1:n-1 %计算数据矩阵B的第一列数据 
c(i,:)=-0.5*(be(i,:)+be(i+1,:)); 
end 
for j=1:n-1 %计算数据矩阵B的第二列数据 
e(j,:)=1; 
end 
for i=1:n-1 %构造数据矩阵B 
B(i,1)=c(i,:); 
B(i,2)=e(i,:); 
end 
alpha=inv(B'*B)*B'*y; %计算参数 矩阵 
for i=1:n+1 %计算数据估计值的累加数列，如改为n+1为n+m可预测后m-1个值 
ago(i,:)=(x(1,:)-alpha(2,:)/alpha(1,:))*exp(-alpha(1,:)*(i-1))+alpha(2,:)/alpha(1,:); 
end 
var(1,:)=ago(1,:); 
for i=1:n %如改n为n+m-1，可预测后m-1个值 
var(i+1,:)=ago(i+1,:)-ago(i,:); %估计值的累加数列的还原，并计算出下一预测值 
end 
for i=1:n 
error(i,:)=var(i,:)-x(i,:); %计算残差 
end 
c=std(error)/std(x); %调用统计工具箱的标准差函数计算后验差的比值c 算级比偏差值
ago;                       %显示输出预测值的累加数列
alpha;                     %显示输出参数数列
var;                       %显示输出预测值
error;                     %显示输出误差
c;                         %显示后验差的比值c
var(123)=[];                %保持维度一致 通过具体数据改变
qqq=error./VarName2;            %百分率矩阵
s1=0;%计算conditons矩阵
s2=0;
s3=0;
s4=0;
s5=0;
s6=0;
s=0;
conditions=zeros(122,1);
for i=1:122
    if qqq(i)<-0.05 && qqq(i)>=-0.09
        s1=s1+1;
        conditions(i)=1;
    end
    if qqq(i)<-0.01 && qqq(i)>=-0.05
        s2=s2+1;
        conditions(i)=2;
    end
    if qqq(i)<0 && qqq(i)>=-0.01
        s3=s3+1;
        conditions(i)=3;
    end
    if qqq(i)<0.01 && qqq(i)>=0
        s4=s4+1;
        conditions(i)=4;
    end
    if qqq(i)<0.05 && qqq(i)>=0.01
        s5=s5+1;
        conditions(i)=5;
    end
    if qqq(i)<0.09 && qqq(i)>=0.05
        s6=s6+1;
        conditions(i)=6;
    end
    if qqq(i)>=0.09 || qqq(i)<-0.09
        conditions(i)=4;
        s=s+1;
    end
end
    s1;
    s2;
    s3;
    s4;
    s5;
    s6;
count=zeros(6);%计算count矩阵
for i=1:119
    count(conditions(i),conditions(i+1))=count(conditions(i),conditions(i+1))+1;
end
count;
format rat
for i=1:6
    for j=1:6
        chance(i,j)=count(i,j)/sum(count(i,:));  %概率矩阵
    end
end
chance;
    if qqq(122)<-0.05 && qqq(122)>=-0.09
    b1=[1 0 0 0 0 0];
    end
    if qqq(122)<-0.01 && qqq(122)>=-0.05
    b1=[0 1 0 0 0 0];
    end
    if qqq(122)<0 && qqq(122)>=-0.01
    b1=[0 0 1 0 0 0];
    end
    if qqq(122)<0.01 && qqq(122)>=0
    b1=[0 0 0 1 0 0];
    end
    if qqq(122)<0.05 && qqq(122)>=0.01
    b1=[0 0 0 0 1 0];
    end
    if qqq(122)<0.09 && qqq(122)>=0.05
     b1=[0 0 0 0 0 1];
    end
    b2=b1*chance;
    b3=b2*chance;
    b4=b3*chance;
    b5=b4*chance;
    b6=b5*chance;
    b=[b2; b3; b4; b5; b6];
    format long
    disp(alpha);
    format rat
    disp(count);
    disp(chance);
    disp(b);