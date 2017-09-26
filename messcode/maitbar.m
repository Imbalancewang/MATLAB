steps=100;
hwait=waitbar(0,'请等待>>>>>>>>');
for k=1:steps
        str=['正在运行中',num2str(k),'%'];
        waitbar(k/steps,hwait,str);
end
close(hwait); 