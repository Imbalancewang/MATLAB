%February
if 0
time=1:288;
s=zeros(288,1);
for i=1:288
    s(i)=sum(Febob(1+5*(i-1):5*i))/5;
end
plot(time,s');
title('2.1');
xlabel('time');
ylabel('vob');
%
sumfeb=zeros(28,1);
for i=1:28
    sumfeb(i)=sum(Marob(1+1440*(i-1):1440*i));
end
day=1:28;
scatter(day,sumfeb');
grid on;
time=1:1440;
for i=1:28
    scatter(time,FebTime(1+1440*(i-1):1440*i));
    hold on;
end
end
%kmeans of vob
new_matrix=reshape(changerate,1440,28);
time=1:1440;
c=zeros(2,1440);
sumd=zeros(2,1440);
D=zeros(2,1440);
idx=zeros(28,1440);
for i=1:1440
    [idx(:,i),c(:,i),sumd(:,i)]=kmeans(new_matrix(i,:)',2);
end
for i=1:1440
    if c(1,i)>c(2,i)
        t=c(1,i);
        c(1,i)=c(2,i);
        c(2,i)=t;
    end
end
summ=zeros(1440,1);
for i=1:1440
    summ(i)=sum(sumd(:,i))/28;
end
judgevob=ones(1440,28);
for i=1:1440
    for j=1:28
        if new_matrix(i,j)<sum(c(:,i))/2 & (new_matrix(i,j)-c(1,i))^2>summ(i)
            judgevob(i,j)=0;
        else
            judgevob(i,j)=1;
        end
    end
end
sig=zeros(1440,1);
u=1;
for i=1440
    chance=[];
    for j=1:28
         if new_matrix(i,j)<sum(c(:,i))/2
             chance(u)=new_matrix(i,j)-c(1,i);
             u=u+1;
         end
    end
    sig(i)=sqrt(variance(chance))*1.67;%1.67系数
    for v=1:28
        if judgevob(i,v)==0 & abs(new_matrix(i,v)-c(1,i))<sig(v)
            judgevob(i,v)=1;
        end
    end
end
judgeVob=reshape(judgevob,40320,1);
oob=judgeVob.*Febob;
figure(5);
for i=1:28
    scatter(time,oob(1+1440*(i-1):1440*i));
end
grid on;
xlabel('时间');
ylabel('交易量');
title('二月份筛选数据后交易量与时间的关系图');
if 0
scatter(time,c(1,:));
hold on;
scatter(time,c(2,:));
grid on;
title('基于Kmeans聚类方法的二月份时间与交易量变化质心图');
xlabel('时间');
ylabel('交易量');
legend('质心1','质心2');
end