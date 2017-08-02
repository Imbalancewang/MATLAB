function result=calculate_fun(present)
    x=present.x;
    y=present.y;
    sigma=50;
    if x<-100 || x>100 || y<-100 || y>100
        result=0;        
    else           
        result= (1/(2*pi*sigma^2))*exp(-(x.^2+y.^2)/(2*sigma^2)); 
    end
end