% written by ���� ѡȡ122�� ֻ��һЩ��Ʊ���ó�������
clc %��������ʹ���������ʾ 
format long; %���ü��㾫�� 
x=VarName2; %�Ӿ�������ı�������� 45lines
if length(x(:,1))==1 %�������������жϣ��粻��һά�о��󣬽���ת�ñ任 
x=x'; 
end 
n=length(x); %ȡ�������ݵ������� 
z=0; 
for i=1:n %�����ۼ�ֵ������ֵ�������be 
z=z+x(i,:); 
be(i,:)=z; 
end 
for i=2:n %��ԭʼ����ƽ����λ 
y(i-1,:)=x(i,:); 
end 
for i=1:n-1 %�������ݾ���B�ĵ�һ������ 
c(i,:)=-0.5*(be(i,:)+be(i+1,:)); 
end 
for j=1:n-1 %�������ݾ���B�ĵڶ������� 
e(j,:)=1; 
end 
for i=1:n-1 %�������ݾ���B 
B(i,1)=c(i,:); 
B(i,2)=e(i,:); 
end 
alpha=inv(B'*B)*B'*y; %������� ���� 
for i=1:n+1 %�������ݹ���ֵ���ۼ����У����Ϊn+1Ϊn+m��Ԥ���m-1��ֵ 
ago(i,:)=(x(1,:)-alpha(2,:)/alpha(1,:))*exp(-alpha(1,:)*(i-1))+alpha(2,:)/alpha(1,:); 
end 
var(1,:)=ago(1,:); 
for i=1:n %���nΪn+m-1����Ԥ���m-1��ֵ 
var(i+1,:)=ago(i+1,:)-ago(i,:); %����ֵ���ۼ����еĻ�ԭ�����������һԤ��ֵ 
end 
for i=1:n 
error(i,:)=var(i,:)-x(i,:); %����в� 
end 
c=std(error)/std(x); %����ͳ�ƹ�����ı�׼�����������ı�ֵc �㼶��ƫ��ֵ
ago;                       %��ʾ���Ԥ��ֵ���ۼ�����
alpha;                     %��ʾ�����������
var;                       %��ʾ���Ԥ��ֵ
error;                     %��ʾ������
c;                         %��ʾ�����ı�ֵc
var(123)=[];                %����ά��һ�� ͨ���������ݸı�
qqq=error./VarName2;            %�ٷ��ʾ���
s1=0;%����conditons����
s2=0;
s3=0;
s4=0;
s5=0;
s6=0;
s=0;
conditions=zeros(122,1);
for i=1:122
    if qqq(i)<-0.05 && qqq(i)>=-0.09
        s1=s1+1;
        conditions(i)=1;
    end
    if qqq(i)<-0.01 && qqq(i)>=-0.05
        s2=s2+1;
        conditions(i)=2;
    end
    if qqq(i)<0 && qqq(i)>=-0.01
        s3=s3+1;
        conditions(i)=3;
    end
    if qqq(i)<0.01 && qqq(i)>=0
        s4=s4+1;
        conditions(i)=4;
    end
    if qqq(i)<0.05 && qqq(i)>=0.01
        s5=s5+1;
        conditions(i)=5;
    end
    if qqq(i)<0.09 && qqq(i)>=0.05
        s6=s6+1;
        conditions(i)=6;
    end
    if qqq(i)>=0.09 || qqq(i)<-0.09
        conditions(i)=4;
        s=s+1;
    end
end
    s1;
    s2;
    s3;
    s4;
    s5;
    s6;
count=zeros(6);%����count����
for i=1:119
    count(conditions(i),conditions(i+1))=count(conditions(i),conditions(i+1))+1;
end
count;
format rat
for i=1:6
    for j=1:6
        chance(i,j)=count(i,j)/sum(count(i,:));  %���ʾ���
    end
end
chance;
    if qqq(122)<-0.05 && qqq(122)>=-0.09
    b1=[1 0 0 0 0 0];
    end
    if qqq(122)<-0.01 && qqq(122)>=-0.05
    b1=[0 1 0 0 0 0];
    end
    if qqq(122)<0 && qqq(122)>=-0.01
    b1=[0 0 1 0 0 0];
    end
    if qqq(122)<0.01 && qqq(122)>=0
    b1=[0 0 0 1 0 0];
    end
    if qqq(122)<0.05 && qqq(122)>=0.01
    b1=[0 0 0 0 1 0];
    end
    if qqq(122)<0.09 && qqq(122)>=0.05
     b1=[0 0 0 0 0 1];
    end
    b2=b1*chance;
    b3=b2*chance;
    b4=b3*chance;
    b5=b4*chance;
    b6=b5*chance;
    b=[b2; b3; b4; b5; b6];
    format long
    disp(alpha);
    format rat
    disp(count);
    disp(chance);
    disp(b);