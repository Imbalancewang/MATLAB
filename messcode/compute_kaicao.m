L=120;
R=25;
H=53;
l=L/4;
phi=linspace(atan(L/(2*R)),pi/2,10);
theta=linspace(0,atan(L/(2*H)),10);
l_=(R^2-(L/2*tan(pi/2-phi)).^2).^(1/2);
x=L/2*tan(pi/2-phi);
y=zeros(20,20);
z=zeros(20,20);
for i=1:10
    y(i,1:10)=l_-(L/2-l_).*(l_-l*cos(theta(i)))./(l_.^2+l^2-2*l.*l_.*cos(theta(i))).^(1/2);
    z(i,1:10)=-(L/2-l_).*(l*sin(theta(i)))./(l_.^2+l^2-2*l.*l_.*cos(theta(i))).^(1/2);
end;
kaicao=zeros(10,1);
for i=1:10
    kaicao(i)=max((l_.^2+l^2-2*l.*l_.*cos(theta(i))).^(1/2)-(l-l_));
end
