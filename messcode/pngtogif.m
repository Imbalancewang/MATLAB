for i=1:10 %ͼƬ��
    Img=imread(['/Users/rd/Documents/' num2str(i) '.png']);
    imshow(Img,[]);%���Կ���ͼ��ı仯����ȥ����ֱ�ӱ��������ˣ�������ʾ
    frame=getframe(gcf);
    im=frame2im(frame);%����gif�ļ���ͼ�������index����ͼ��
    [I,map]=rgb2ind(im,256);
    if i==1;
        imwrite(I,map,'/Users/rd/Documents/MATLAB/test1.gif','gif','Loopcount',inf,...
            'DelayTime',0.1); 
    else
        imwrite(I,map,'/Users/rd/Documents/MATLAB/test1.gif','gif','WriteMode','append',...
            'DelayTime',0.1); 
    end
end