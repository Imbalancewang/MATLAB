k1=6703/6;
miu1=8/60;
miu2=3/60;
sigma13=0.2*3;
sigma141=0.1333*3;
sigma142=0.12*3;
sigma16=0.15*3;
sigma17=0.1222*3;
sigma8=0.2*3;
sigma91=0.1533*3;
sigma92=0.14*3;
sigma11=0.111*3;
sigma12=0.1*3;
time8=8-miu1;
time91=9+5/6-miu1;
time92=9+35/60+miu2;
time11=11.5+miu2;
time12=12+1/3+miu2;
time13=13-miu1;
time141=14+5/6-miu1;
time142=14+35/60+miu2;
time16=16+25/60+miu2;
time17=17+15/60+miu2;
ezplot(@(x)k1*normpdf(x,time8,sigma8),[time8-3*sigma8,time8+0.5*sigma8]);
hold on;
ezplot(@(x)k1*normpdf(x,time91,sigma91),[time91,time91+3*sigma91]);
hold on;
ezplot(@(x)k1*normpdf(x,time92,sigma92),[time92-3*sigma92,time92+0.5*sigma92]);
hold on;
ezplot(@(x)k1*normpdf(x,time11,sigma11),[time11,time11+3*sigma11]);
hold on;
ezplot(@(x)k1*normpdf(x,time12,sigma12),[time12,time12+3*sigma12]);
hold on;
ezplot(@(x)k1*normpdf(x,time13,sigma13),[time13,time13+3*sigma13]);
hold on;
ezplot(@(x)k1*normpdf(x,time141,sigma141),[time141,time141+3*sigma141]);
hold on;
ezplot(@(x)k1*normpdf(x,time142,sigma142),[time142-3*sigma142,time142+0.5*sigma142]);
hold on;
ezplot(@(x)k1*normpdf(x,time16,sigma16),[time16,time16+3*sigma16]);
hold on;
ezplot(@(x)k1*normpdf(x,time17,sigma17),[time17,time17+3*sigma17]);
xlabel('时间');
ylabel('人数');
title('时间人数图');
axis([6.5 18 0 1.25*k1])
grid on;





