%load B
x=zeros(28,1);
y=zeros(28,1);
average=zeros(28,1);
for i=1:28
    average(i)=mean(Febob(1440*(i-1)+1:1440*i));
    x(i)=min(find(Febob(1440*(i-1)+1:1440*i)>=average(i)));
    y(i)=max(find(Febob(1440*(i-1)+1:1440*i)>=average(i)));
end
