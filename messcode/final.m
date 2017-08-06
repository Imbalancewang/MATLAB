% clc;
%clear;
path_in='/Users/rd/Documents/MATLAB'
b_length=120;
sposition=0.5;
b_width=50;
thick=3;
height_desk=53-thick;
barwidth=2.5;  
barnum=b_width/barwidth/2;
roundra=b_width/2;
Barx1=sqrt(roundra^2-(roundra-1/2*barwidth)^2);
Bary1=roundra-1/2*barwidth;
BarLength1=1/2*b_length-Barx1;
Angle=asin(height_desk/BarLength1);
BarLength=1/2*b_length-sqrt(roundra^2-(roundra-((1:barnum)-0.5)*barwidth).^2);
Barx=b_length*1/2-BarLength;
Bary=(barnum-0.5:-1:0.5)*barwidth;
VBary=Bary;
for theta=linspace(0,Angle,10)
    for t= 0:pi/50:2*pi-pi/50;
        X=[roundra*sin(t) roundra*sin(t+pi/50) ];Y=[roundra*cos(t) roundra*cos(t+pi/50)];Z=[zeros(length(t)) zeros(length(t))];
        plot3(X,Y,Z)
        axis([-30 30 -30 30 -50 0]);
        hold on;%round;
    end
SteelBarx=Barx1+sposition*BarLength1*cos(theta);
SteelBary1=-Bary1;SteelBary2=Bary1;
SteelBarz=sposition*BarLength1*sin(theta);
X=[SteelBarx SteelBarx];Y=[SteelBary1 SteelBary2];Z=[SteelBarz SteelBarz];
plot3(X,Y,-Z);hold on;grid on;
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
    hold off;
    saveas(gca,[path_in,num2str(theta)],'png');  
end



