steps=100;
hwait=waitbar(0,'��ȴ�>>>>>>>>');
for k=1:steps
        str=['����������',num2str(k),'%'];
        waitbar(k/steps,hwait,str);
end
close(hwait); 