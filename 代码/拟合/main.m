%1--����������ݶ�ȡ����

hh=open('����ͼ����.fig');

%�� ͼ��

ha=get(hh,'Children'); aa=get(ha(2),'Children');

xx=[]; yy=[];%�������

for ii=l:length(aa),

xx=[xx get(aa(ii),'XData')];%X �����

yy=[yy get(aa(ii);YData')];%Y �����

end

figwe; plot3(xx,yy,'o')%��ȡ���

% %2--������������Է�����������
% 
% clear;clc;
% options = optimset('MaxfUnevals',1e4);%�ı� Maxfonevals ֵ
% 
% global number;
% 
% number=0;%����������ʼֵ����
% 
% x0=[4.79,0,2.648,1,80];% ����Ԥ��ֵ
% 
% x=fsolve('Ref5',x0,options)%��� fslove ����
% 
% 
% %3--�Ĳ����������Է�����������
% 
% clear;clc;
% 
% options = optimset('MaxfUnevals',1e4);%�ı� Maxfonevals ֵ
% 
% global number;
% 
% number=0;%����������ʼֵ����
% 
% x0=[4.79, 0,2.648,1];%����Ԥ��ֵ
% 
% x=fsolve('Ref4',x0,options)%��� fslove ����



%4--��״���������Է�����������

clear;clc;


options = optimset('Maxfunevals',1e4);%�ı� MaxfUnevals ֵ

global number;

number=0;%����������ʼֵ����

x0=[1,1];%����Ԥ��ֵ

 x=fsolve('Refxz',x0,options)%���fslove ����
 
 
 