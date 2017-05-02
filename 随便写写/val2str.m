function val2str(res,base)
if base == uint8(10)
    c=sprintf('%g',res);
    if isempty(find(c=='.',1));
        c=[c '.'];
    end
elseif base == uint8(2)
    c=dec2bin(base(res));
elseif base == uint8(16)
    c=dec2hex(abs(res));
else
    c=dec2base(abs(res),8);
end
