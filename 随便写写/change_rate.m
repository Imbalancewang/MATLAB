%February change rate
%change rate1
%Formula:change_rate1(i)=Februaryob(i+1)-Februaryob(i);
changerate=zeros(length(Febob)-1,1);
for i=2:length(Febob)
    changerate(i-1)=Febob(i)-Febob(i-1);
end
time=1:1440;
changerate(40320)=0;
scatter(time,changerate(1:1440));
grid on;
title('T-CR');
xlabel('Time');
ylabel('Changerate');
%for i=1:28
%   scatter(time,changerate(1+1440*(i-1):1440*i));
%    hold on;
%end
%grid on;
%title('T-CR');
%xlabel('Time');
%ylabel('Changerate');
%change rate2
