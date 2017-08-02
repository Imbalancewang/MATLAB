function num16(hObject,eventdata,handles,num16Char)
showExpand=getappdata(gcf,'showExpand');
str=get(handles.display,'String');
if ~showExpand || str(1) == '0'
    set(handles.display)
    setappdata(gcf,'showExpand',true);
elseif length(str)<20
    set(handles.display,'String',[str num16Char])
end
setappdata(gcf,'hasOperator',false);