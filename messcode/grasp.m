str=urlread('http://image.baidu.com/','Timeout',5,'Charset','gb2312');
pics=regexp(str,'http://[\w/.-]+\.((gif)|(png)|(bmp)|(jpg))','match');
for m=1:length(pics)
    urlwrite(pics{m},['baiduPic',num2str(m),pics{m}(end - 3:end)]);
end