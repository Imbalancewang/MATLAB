clear all;
clc;
%v=wv+c1*rand()*(pbest-present)+c2*rand()*(gbest-present);
%present=present+v;
%Assume the dimention is 2;
%target function is Guass-Fuction
[x y]=meshgrid(-100:100,-100:100);
sigma=50;
img = (1/(2*pi*sigma^2))*exp(-(x.^2+y.^2)/(2*sigma^2)); 
mesh(img);
hold on;
n=5;
present=struct([]);
for i=1:n
    present(i).x=-100+rand()*200;
    present(i).y=-100+rand()*200;
    present(i).vx=-1+2*rand();
    present(i).vy=-1+2*rand();
    present(i).fit=0;
    present(i).bestfit=0;
    present(i).bestx=present(i).x;
    present(i).besty=present(i).y;
end
gbest=present(1);
for k=1:n
    plot3(gbest.x+100,gbest.y+100,gbest.fit,'r*');
    for m=1:n
        [present(m), gbest]=update_present(present(m),gbest);
    end
end


