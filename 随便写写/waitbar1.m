clear;
iscanceled=false;
hwaitbar=waitbar(0,'please wait','Name','waitbar','createcancelBtn','iscanceled=true;','color',[0.5 0.5 0.5]);
btncancel=findall(hwaitbar,'style','pushbutton');
set(btncancel,'string','È¡Ïû','fontsize',10);
for i=1:100
    waitbar(i/100,hwaitbar,['complete' num2str(i) '%']);
    pause(0.1);
    if iscanceled
        break;
    end
end
if ishandle(hwaitbar)
    delete(hwaitbar);
    clear hwaitbar;
end
clear;