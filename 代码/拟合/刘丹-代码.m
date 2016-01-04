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


