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
grid on;
end
%kmeans of vob
new_matrix=reshape(Febob,1440,28);
time=1:1440;
c=zeros(2,1440);
for i=1:1440
    [idx,c(:,i)]=kmeans(new_matrix(i,:)',2);
end
for i=1:1440
    if c(1,i)>c(2,i)
        t=c(1,i);
        c(1,i)=c(2,i);
        c(2,i)=t;
    end
end
scatter(time,c(1,:));
grid on;