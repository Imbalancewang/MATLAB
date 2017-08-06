%clc;
%clear;
path_in='/Users/rd/Documents/MATLAB';
blength=140;
SteelPosition=0.3;
b_width=50;
thick=3;
height_desk=53-thick;
BarWidth=2.5;  
xishu=1.2;
barnum=b_width/BarWidth/2;
roundra=b_width/2;
Barx1=xishu*sqrt(roundra^2-(roundra-1/2*BarWidth)^2);
Bary1=roundra-1/2*BarWidth;
BarLength1=1/2*blength-Barx1;
Angle=asin(height_desk/BarLength1);
BarLength=1/2*blength-xishu*sqrt(roundra^2-(roundra-((1:barnum)-0.5)*BarWidth).^2);
Barx=blength*1/2-BarLength;
Bary=(barnum-0.5:-1:0.5)*BarWidth;
VBary=Bary;
for theta=linspace(0,Angle,10)
    for t= 0:pi/50:2*pi-pi/50;
        X=xishu*[roundra*sin(t) roundra*sin(t+pi/50) ];Y=[roundra*cos(t) roundra*cos(t+pi/50)];Z=[zeros(length(t)) zeros(length(t))];
        plot3(X,Y,-Z);
        axis([-50 50 -30 30 -60 0]);
        grid on;
        hold on
    end
SteelBarx=Barx1+SteelPosition*BarLength1*cos(theta);
SteelBary1=-Bary1;SteelBary2=Bary1;
SteelBarz=SteelPosition*BarLength1*sin(theta);
X=[SteelBarx SteelBarx];Y=[SteelBary1 SteelBary2];Z=[SteelBarz SteelBarz];
plot3(X,Y,-Z);hold on
X=[-SteelBarx -SteelBarx];Y=[SteelBary1 SteelBary2];Z=[SteelBarz SteelBarz];
plot3(X,Y,-Z);hold on
    for i=1:length(BarLength)
        alpha(i)=atan2(SteelBarz,(SteelBarx-Barx(i)));
        VBarz(i)=BarLength(i)*sin(alpha(i));
        VBarx(i)=Barx(i)+BarLength(i)*cos(alpha(i));
        X=[Barx(i) VBarx(i)];Y=[Bary(i) VBary(i)];Z=[0 VBarz(i)];
        plot3(X,Y,-Z);hold on
        X=[Barx(i) VBarx(i)] ;Y=[-Bary(i) -VBary(i)];Z=[0 VBarz(i)];
        plot3(X,Y,-Z);hold on
       X=[-Barx(i) -VBarx(i)];Y=[Bary(i) VBary(i)];Z=[0 VBarz(i)];
       plot3(X,Y,-Z);hold on
       X=[-Barx(i) -VBarx(i)];Y=[-Bary(i) -VBary(i)];Z=[0 VBarz(i)];
       plot3(X,Y,-Z);hold on    
    end
    for i=1:length(BarLength)-1
        X=[VBarx(i) VBarx(i+1)];Y=[VBary(i) VBary(i+1)];Z=[VBarz(i) VBarz(i+1)];
        plot3(X,Y,-Z);hold on
        X=[VBarx(i) VBarx(i+1)] ;Y=[-VBary(i) -VBary(i+1)];Z=[VBarz(i) VBarz(i+1)];
        plot3(X,Y,-Z);hold on
       X=[-VBarx(i) -VBarx(i+1)];Y=[VBary(i) VBary(i+1)];Z=[VBarz(i) VBarz(i+1)];
       plot3(X,Y,-Z);hold on
       X=[-VBarx(i) -VBarx(i+1)];Y=[-VBary(i) -VBary(i+1)];Z=[VBarz(i) VBarz(i+1)];
       plot3(X,Y,-Z);hold on
    end
    X=[VBarx(length(BarLength)) VBarx(length(BarLength))]; Y=[-VBary(length(BarLength)) VBary(length(BarLength))]; Z=[VBarz(length(BarLength)) VBarz(length(BarLength))];
     plot3(X,Y,-Z);hold on
    X=[-VBarx(length(BarLength)) -VBarx(length(BarLength))]; Y=[-VBary(length(BarLength)) VBary(length(BarLength))]; Z=[VBarz(length(BarLength)) VBarz(length(BarLength))];
     plot3(X,Y,-Z);hold on
    pause(0.1);
    hold off
    saveas(gca,[path_in,num2str(theta)],'png');  
end






