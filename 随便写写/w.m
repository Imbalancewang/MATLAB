for i=10000:99999;
    c=rem(i,10);
    d=(rem(i,1000)-c)/10;
    a=(i-rem(i,1000))/1000;
    if i==(a*d+c)
        disp(i)
    end
end
