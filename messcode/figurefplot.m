[x y]=fplot('function0',[-0.2 0.2],1e-4);
len=size(x);
m=-0.2:0.4/(len(1)+1):0.2;
n=function0(m);
figure;
plot(m,n,'LineWidth',1)