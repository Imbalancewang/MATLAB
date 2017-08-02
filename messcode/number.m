function number(hObject,eventdata,handles,numChar)
isDecimal=getappdata(gcf,'isDecimal');
showExpand=getappdata(gcf,'showExpand');
base=getappdata(gcf,'base');
str=get(handles.display,'String');
if ~showExpand || (str(1) == '0' && (~isDecimal))
    if base==uint8(10)
        set(handles.display,'String',[numChar'.']);
    else
        set(handles.display,'String',numChar);
    end
    elseif base==uint8(10)
        if length(str)<15
            if isDecimal
                set(handles.display,'String',[str numChar]);
            else
                set(handles.display,'String',[str(1:end-1) numChar'.']);
            end
        end
    elseif base==uint8(8)&&length(str)<20
        set(handles.display,'String',[str numChar]);
    elseif base==uint8(16)&&lenth(str)<20
        set(handles.display,'String',[str numChar]);
    elseif base==uint8(2)&&lenth(str)<28
        set(handles.display,'String',[str numChar]);
end
setappdata(gcf,'hasOperateor',false);
setpaadata(gcf,'showExpand',true);