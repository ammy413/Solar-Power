%1--����������ݶ�ȡ����

hh=open('����ͼ����.fig');

%�� ͼ��

ha=get(hh,'Children'); aa=get(ha(2),'Children');

xx=[]; yy=[];�������

for ii=l:length(aa),

xx=[xx get(aa(ii),'XData')];%X �����

yy=[yy get(aa(ii);YData')];%Y �����

end

figwe; plot3(xx,yy,'o')%��ȡ���



%2--������������Է�����������

clear;clc;

%�༭�������fsolve����

function q=Ref5(p) %���庯��

%�������

IL=p(l);

I0=p(2);

A=p(3);

Rs=p(4);

Rsh=p(5);

global number; %�����������

number=Tiumber+1 ;

%��д�����Է�����

q(l)=IL-I0*(Rshxp(4.79*Rs/A)-l)-4.79*Rs/Rsh-4.79;

q(2)=IL-I0*(Rshxp(37.71/A)-l)-37.71/Rsh;

q(3HL-I0*(Rshxp((28.31+4.29*Rs)/A)-l)-(28.31+4.29*Rs)/Rsh-4.29;

q(4)=4.29/28.31-(I0/A*Rshxp((28.31+4.29*Rs)/A)+l/Rsh)/(l+I0*Rs/A*Rshxp((28.3

l+4.29*Rs)/A)+Rs/Rsh);

q(5)=(I0/A*Rshxp(4.79*Rs/A)+l/Rsh)/(l+I0*Rs/A*Rshxp(4.79*Rs/A)+Rs/Rsh)-l/R

sh;

end %fsolve�����༭���

options = optimset('MaxfUnevals',le4);%�ı� Maxfonevals ֵ

global number;

number=0;%����������ʼֵ����

x0=[4.79,0,2.648,1,80];% ����Ԥ��ֵ

x=fsolve('Ref5',xO,options)%��� fslove ����

%3--�Ĳ����������Է�����������

clear;clc;

%�༭�Ĳ�����fsolve����

function q=Ref4(p) %���庯��

%�������

IL=p(l);

I0=P(2);

A=p(3);

Rs=p(4);

global number; %�����������

number=number+1 ;

%��д�����Է�����

q(l)=IL-I0*(exp(4.79*Rs/A)-l)-4.79;

q(2)=IL-I0*(exp(37.71/A)-l);

q(3)=IL-I0*(exp((28.31+4.29*Rs)/A)-l)-4.29;

q(4)=4.29/28.31-(I0/A*exp((28.31+4.29*Rs)/A))/(l+I0*Rs/A*exp((28.31+4.29*Rs)/

A));	,

end %fsolve�����༭���

options = optimset('MaxfUnevals',le4);%�ı� Maxfonevals ֵ

global number;

number=0;%����������ʼֵ����

x0=[4.79, 0,2.648,1];%����Ԥ��ֵ

x=fsolve('Ref4',xO,options)%��� fslove ����

%4--��״���������Է�����������

clear;clc;

%�༭��״������fsolve����

function q=Refxz(p) %���庯��

%�������

a=p(l);

b=p(2);

global number; %�����������

number=number+1 ;

��д�����Է�����

q(l)=b/((4.79/4.29)Ab- l)-a;

q(2)=a/((37.71/28.31 )Aa-1 )-b;

end %fsolve�����༭���
	.

options = optimsetCMaxftmevals'JeA);��/^�ı� MaxfUnevals ֵ

global number;

number=0;%����������ʼֵ����

xO=[l,l];%����Ԥ��ֵ

�V=��50^^('1?��;5?',\0,0��1ح0113)%��� fslove ����

