%culling_data
%vob sr rt
%clear all;
%load B;
%clc;
%calculate std;
%calculate every day first;
judgeFebpercent=zeros(length(Febob),1);
sigma_original=zeros(28,1);
for i=1:28
    sigma_original(i)=sqrt(variance(Febpercent(1440*(i-1)+1:1440*i)));
%create a new set
    k=1;
    for j=1:1440
        x(k)=Febpercent(1440*(i-1)+j);
        sigma_new=sqrt(variance(x));
        if sigma_new<sigma_original(i)
            judgeFebpercent(1440*(i-1)+j)=1;
            k=k+1;
        else
            judgeFebpercent(1440*(i-1)+j)=0;
            x(k)=[];
        end
    end
    i*j
end

        