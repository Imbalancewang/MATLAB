j=4;k=5%the area is the biggest;
klat1=(k-1)*0.2+22.4;
klat2=22.4+0.2*k;
jlong1=112.6+(j-1)*0.2;
jlong2=112.6+j*0.2;
m1=1;n1=1;
count=zeros(10,10);
for m=linspace(klat1,klat2,10)
    for n=linspace(klong2,klong2,10)
        if task_lat(seq(i))>=(k-1)*0.2+22.4&task_lat(seq(i))<22.4+0.2*k...
             &task_long(seq(i))>=112.6+(j-1)*0.2&task_long(seq(i))<112.6+j*0.2
        
        
        