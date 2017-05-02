function unarrFcn(hObject,eventdata,handles,op1,op2)
isSecFun=getappdata(gcf,'isSecFun');
setappdata(gcf,'showExpand',false);
setappdata(gcf,'isDecimal',false);
setappdata(gcf,'hasOperator',false);
setappdata(gcf,'exp','');
str=get(handles.display,'String');
if ~isSecFun
    try
        format short;
        res=eval(sprintf(op1,str));
        set(handles.display,'String',num2str(res,'%7.3f'));
    catch
        set(handles.display,'String','error!');
    end
else
    setappdata(gcf,'isSecFun',false);
    set(handles.secndf,'visble','off');
    set(handles.radiobutton1,'enable','on');
    set(handles.radiobutton2,'enable','on');
    set(handles.radiobutton3,'enable','on');
    try
        format short;
        res=eval(sprintff(op2,str));
        set(handles.display,'String',num2str(res,'%7.3f'));
    catch
        set(handles.display,'String','error!');
    end
end

    