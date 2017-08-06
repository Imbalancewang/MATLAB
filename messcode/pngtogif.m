for i=1:10 %图片数
    Img=imread(['/Users/rd/Documents/' num2str(i) '.png']);
    imshow(Img,[]);%可以看到图像的变化，若去掉，直接保存起来了，不会显示
    frame=getframe(gcf);
    im=frame2im(frame);%制作gif文件，图像必须是index索引图像
    [I,map]=rgb2ind(im,256);
    if i==1;
        imwrite(I,map,'/Users/rd/Documents/MATLAB/test1.gif','gif','Loopcount',inf,...
            'DelayTime',0.1); 
    else
        imwrite(I,map,'/Users/rd/Documents/MATLAB/test1.gif','gif','WriteMode','append',...
            'DelayTime',0.1); 
    end
end