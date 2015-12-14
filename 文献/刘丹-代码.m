%1--拟和曲线数据读取程序

hh=open('曲线图名称.fig');

%打 图表

ha=get(hh,'Children'); aa=get(ha(2),'Children');

xx=[]; yy=[];定义变量

for ii=l:length(aa),

xx=[xx get(aa(ii),'XData')];%X 轴变量

yy=[yy get(aa(ii);YData')];%Y 轴变量

end

figwe; plot3(xx,yy,'o')%读取完成



%2--五参数法非线性方程组求解程序

clear;clc;

%编辑五参数法fsolve函数

function q=Ref5(p) %定义函数

%定义变量

IL=p(l);

I0=p(2);

A=p(3);

Rs=p(4);

Rsh=p(5);

global number; %定义迭代次数

number=Tiumber+1 ;

%编写非线性方程组

q(l)=IL-I0*(Rshxp(4.79*Rs/A)-l)-4.79*Rs/Rsh-4.79;

q(2)=IL-I0*(Rshxp(37.71/A)-l)-37.71/Rsh;

q(3HL-I0*(Rshxp((28.31+4.29*Rs)/A)-l)-(28.31+4.29*Rs)/Rsh-4.29;

q(4)=4.29/28.31-(I0/A*Rshxp((28.31+4.29*Rs)/A)+l/Rsh)/(l+I0*Rs/A*Rshxp((28.3

l+4.29*Rs)/A)+Rs/Rsh);

q(5)=(I0/A*Rshxp(4.79*Rs/A)+l/Rsh)/(l+I0*Rs/A*Rshxp(4.79*Rs/A)+Rs/Rsh)-l/R

sh;

end %fsolve函数编辑完成

options = optimset('MaxfUnevals',le4);%改变 Maxfonevals 值

global number;

number=0;%迭代次数初始值归零

x0=[4.79,0,2.648,1,80];% 输入预估值

x=fsolve('Ref5',xO,options)%求解 fslove 函数

%3--四参数法非线性方程组求解程序

clear;clc;

%编辑四参数法fsolve函数

function q=Ref4(p) %定义函数

%定义变量

IL=p(l);

I0=P(2);

A=p(3);

Rs=p(4);

global number; %定义迭代次数

number=number+1 ;

%编写非线性方程组

q(l)=IL-I0*(exp(4.79*Rs/A)-l)-4.79;

q(2)=IL-I0*(exp(37.71/A)-l);

q(3)=IL-I0*(exp((28.31+4.29*Rs)/A)-l)-4.29;

q(4)=4.29/28.31-(I0/A*exp((28.31+4.29*Rs)/A))/(l+I0*Rs/A*exp((28.31+4.29*Rs)/

A));	,

end %fsolve函数编辑完成

options = optimset('MaxfUnevals',le4);%改变 Maxfonevals 值

global number;

number=0;%迭代次数初始值归零

x0=[4.79, 0,2.648,1];%输入预估值

x=fsolve('Ref4',xO,options)%求解 fslove 函数

%4--形状参数非线性方程组求解程序

clear;clc;

%编辑形状参数法fsolve函数

function q=Refxz(p) %定义函数

%定义变量

a=p(l);

b=p(2);

global number; %定义迭代次数

number=number+1 ;

编写非线性方程组

q(l)=b/((4.79/4.29)Ab- l)-a;

q(2)=a/((37.71/28.31 )Aa-1 )-b;

end %fsolve函数编辑完成
	.

options = optimsetCMaxftmevals'JeA);。/^改变 MaxfUnevals 值

global number;

number=0;%迭代次数初始值归零

xO=[l,l];%输入预估值

乂=『50^^('1?￡;5?',\0,0口1丨0113)%求解 fslove 函数

