%To generate data, I use the Guassian distribution
%matlab mvnrnd;
%help mvnrnd;
%Example:
       %mu = [1 -1]; Sigma = [.9 .4; .4 .3];
       %r = mvnrnd(mu, Sigma, 500);
       %plot(r(:,1),r(:,2),'.');
%dimension:3;
%Euclidean distance
mu1=[0 0 0];
sigma1=[.5 0 0 ;0 .75 0;0 0 .5];
data1=mvnrnd(mu1,sigma1,100);


mu2=[-1 1 -1];
sigma2=[.5 0 0 ;0 .75 0;0 0 .5];
data2=mvnrnd(mu2,sigma2,100);

mu3=[1 -1 1];
sigma3=[.5 0 0 ;0 .75 0;0 0 .5];
data3=mvnrnd(mu3,sigma3,100);

plot3(data1(:,1),data1(:,2),data1(:,3),'ro');
hold on;
plot3(data2(:,1),data2(:,2),data2(:,3),'bx');
hold on;
plot3(data3(:,3),data1(:,3),data3(:,3),'g+');
grid on;
data=[data1;data2;data3];
[u result]=algorithm(data,3);
[m n]=size(result);
figure;
hold on;
for i=1:m 
    if result(i,4)==1   
         plot3(result(i,1),result(i,2),result(i,3),'ro'); 
    elseif result(i,4)==2
         plot3(result(i,1),result(i,2),result(i,3),'go'); 
    else 
         plot3(result(i,1),result(i,2),result(i,3),'bo'); 
    end
end
grid on;