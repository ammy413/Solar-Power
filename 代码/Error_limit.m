function [ y ] = Error_limit( data_excel,num_piont )


%%读取数据
data=xlsread('记录表单.xlsx','预测试-仪表',data_excel);
data_length=length(data);
%%直接显示数据 折线图
figure;
plot(1:1:data_length,data);
xlabel(['测量次数（共计',int2str(length(data)),'次）']);
ylabel('温度（℉）');
title('温度测量曲线图')
%%显示5个点求平均值后的折线图
num_group=data_length/num_piont;
num_group_mean=mean(reshape(data,num_piont,num_group));

figure;
plot(1:1:num_group,num_group_mean);
xlabel(['测量次数（共计',int2str(length(data)),'次）']);
ylabel('温度（℉）');
title('温度测量曲线图')

%%num_piont个点内最大的波动范围
error_limit_max=max(max(reshape(data,num_piont,num_group))-min(reshape(data,num_piont,num_group)));
error_limit_mean=mean(max(reshape(data,num_piont,num_group))-min(reshape(data,num_piont,num_group)));

disp(['该组数据共计有',int2str(data_length),'个点。']);
disp(['以',int2str(num_group),'个点为一组']);
disp(['共计有',int2str(num_piont),'组']);
disp(['每组内最大波动范围：',num2str(error_limit_max)]);
disp(['每组内平均波动范围：',num2str(error_limit_mean)]);
y=0;

%%所有数据的均值和最大差值
D_value_max=max(data)-min(data);
data_mean=mean(data);
disp(['最大差值为：',num2str(D_value_max)]);
disp(['平均值为：',num2str(data_mean)]);

% data_mean=mean(mean(data));
% b=abs(data(:)-data_mean)<x;
% c=length(b(b==1));
% y=c
% [s,h]=size(data)
% y=c/(s*h)
% hist(data);
% data'

end

