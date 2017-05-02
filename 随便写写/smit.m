A=rand(6);
a1=A(1,:);
a2=A(2,:);
a3=A(3,:);
a4=A(4,:);
a5=A(5,:);
a6=A(6,:);
b1=a1;
b2=a2-dot(a2,b1)/dot(b1,b1)*b1;
b3=a3-dot(a3,b1)/dot(b1,b1)*b1-dot(a3,b2)/dot(b2,b2)*b2;
b4=a4-dot(a4,b1)/dot(b1,b1)*b1-dot(a4,b2)/dot(b2,b2)*b2-dot(a4,b3)/dot(b3,b3)*b3;
b5=a5-dot(a5,b1)/dot(b1,b1)*b1-dot(a5,b2)/dot(b2,b2)*b2-dot(a5,b3)/dot(b3,b3)*b3-dot(a5,b4)/dot(b4,b4)*b4;
b6=a6-dot(a6,b1)/dot(b1,b1)*b1-dot(a6,b2)/dot(b2,b2)*b2-dot(a6,b3)/dot(b3,b3)*b3-dot(a6,b4)/dot(b4,b4)*b4-dot(a6,b5)/dot(b5,b5)*b5;
B=[b1;b2;b3;b4;b5;b6];
disp(A)
disp(B)

