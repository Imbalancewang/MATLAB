%culling_data
%vob sr rt
%clear all;
%load B;
%clc;
%calculate std;
%calculate every day first;
lambda=0.94;
xx=zeros(28,1);
yy=zeros(28,1);
average=zeros(28,1);
for i=1:28
    average(i)=mean(Febob(1440*(i-1)+1:1440*i));
    xx(i)=min(find(Febob(1440*(i-1)+1:1440*i)>=average(i)));
    yy(i)=max(find(Febob(1440*(i-1)+1:1440*i)>=average(i)));
end
judgeFebTime=zeros(length(Febob),1);
sigma_original=zeros(28,3);
sigma_new=zeros(40320,1);
ave=zeros(28,3);
for i=1:28
    sigma_original(i,1)=sqrt(variance(FebTime(1440*(i-1)+1:1440*(i-1)+xx(i))));
    ave(i,1)=mean(FebTime(1440*(i-1)+1:1440*(i-1)+xx(i)))*lambda;
    k=1;
    for j=1:xx(i)
        x(k)=FebTime(1440*(i-1)+j);
        sigma_new(1440*(i-1)+j)=sqrt(variance(x));
        if  x(k)>=ave(i,1) || sigma_new(1440*(i-1)+j)<sigma_original(i,1) 
            judgeFebTime(1440*(i-1)+j)=1;
            k=k+1;
        else
            judgeFebTime(1440*(i-1)+j)=0;
            x(k)=[];
        end
    end
    sigma_original(i,2)=sqrt(variance(FebTime(1440*(i-1)+1+xx(i):1440*(i-1)+yy(i))));
    ave(i,2)=mean(FebTime(1440*(i-1)+1+xx(i):1440*(i-1)+yy(i)))*lambda;
    k2=1;
    for j=(xx(i)+1):yy(i)
        x2(k2)=FebTime(1440*(i-1)+j);
        sigma_new(1440*(i-1)+j)=sqrt(variance(x2));
        if  x2(k2)>=ave(i,2) || sigma_new(1440*(i-1)+j)<sigma_original(i,2)
            judgeFebTime(1440*(i-1)+j)=1;
            k2=k2+1;
        else
            judgeFebTime(1440*(i-1)+j)=0;
            x2(k2)=[];
        end
    end
    k3=1;
    sigma_original(i,3)=sqrt(variance(FebTime(1440*(i-1)+1+yy(i):1440*i)))*lambda;
    ave(i,3)=mean(FebTime(1440*(i-1)+1+yy(i):1440*i))*lambda;
    for j=yy(i)+1:1440
        x3(k3)=FebTime(1440*(i-1)+j);
        sigma_new(1440*(i-1)+j)=sqrt(variance(x3));
        if x3(k3)>=ave(i,3) || sigma_new(1440*(i-1)+j)<sigma_original(i,3)
            judgeFebTime(1440*(i-1)+j)=1;
            k3=k3+1;
        else
            judgeFebTime(1440*(i-1)+j)=0;
            x3(k3)=[];
        end
    end
    i*j
end
su=0;
for i=1:40320
    if judgeFebTime(i)==1
        su=su+1;
    end
end

    
        