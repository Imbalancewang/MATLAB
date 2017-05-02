str(1)={'first'};
str(2)={'second'};
str(3)={'third'};
Hm_list=uicontrol('style','listbox','position',[200 250 80 100],'string',str,'callback','listbox1_callback')
index_selected=get(Hm_list,'Value');
list=get(Hm_list,'String');
listnum=list{index_selected};
switch listnum
    case 'first'
        msgbox('This is the first mseeagebox!','message');
    case 'second'
        msgbox('This is the second messagebox','message');
    case 'third'
        msgbox('This is the thrid messagebox','message');
    otherwise
        msgbox('No such option!','message');
end