%1--拟和曲线数据读取程序

hh=open('曲线图名称.fig');

%打 图表

ha=get(hh,'Children'); aa=get(ha(2),'Children');

xx=[]; yy=[];%定义变量

for ii=l:length(aa),

xx=[xx get(aa(ii),'XData')];%X 轴变量

yy=[yy get(aa(ii);YData')];%Y 轴变量

end

figwe; plot3(xx,yy,'o')%读取完成

% %2--五参数法非线性方程组求解程序
% 
% clear;clc;
% options = optimset('MaxfUnevals',1e4);%改变 Maxfonevals 值
% 
% global number;
% 
% number=0;%迭代次数初始值归零
% 
% x0=[4.79,0,2.648,1,80];% 输入预估值
% 
% x=fsolve('Ref5',x0,options)%求解 fslove 函数
% 
% 
% %3--四参数法非线性方程组求解程序
% 
% clear;clc;
% 
% options = optimset('MaxfUnevals',1e4);%改变 Maxfonevals 值
% 
% global number;
% 
% number=0;%迭代次数初始值归零
% 
% x0=[4.79, 0,2.648,1];%输入预估值
% 
% x=fsolve('Ref4',x0,options)%求解 fslove 函数



%4--形状参数非线性方程组求解程序

clear;clc;


options = optimset('Maxfunevals',1e4);%改变 MaxfUnevals 值

global number;

number=0;%迭代次数初始值归零

x0=[1,1];%输入预估值

 x=fsolve('Refxz',x0,options)%求解fslove 函数
 
 
 