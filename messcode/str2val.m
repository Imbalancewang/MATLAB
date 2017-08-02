function str2val(b,base)
if base == uint8(2)
    num=bin2dec(b);
elseif base == uint8(16)
    num=hex2dec(b);
elseif base == uint8(8)
    num=oct2dec(eval(8));
else
    num=str2double(b);
end
