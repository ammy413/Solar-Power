function [ y ] = Error_limit( data_excel,num_piont )


%%��ȡ����
data=xlsread('��¼��.xlsx','Ԥ����-�Ǳ�',data_excel);
data_length=length(data);
%%ֱ����ʾ���� ����ͼ
figure;
plot(1:1:data_length,data);
xlabel(['��������������',int2str(length(data)),'�Σ�']);
ylabel('�¶ȣ��H��');
title('�¶Ȳ�������ͼ')
%%��ʾ5������ƽ��ֵ�������ͼ
num_group=data_length/num_piont;
num_group_mean=mean(reshape(data,num_piont,num_group));

figure;
plot(1:1:num_group,num_group_mean);
xlabel(['��������������',int2str(length(data)),'�Σ�']);
ylabel('�¶ȣ��H��');
title('�¶Ȳ�������ͼ')

%%num_piont���������Ĳ�����Χ
error_limit_max=max(max(reshape(data,num_piont,num_group))-min(reshape(data,num_piont,num_group)));
error_limit_mean=mean(max(reshape(data,num_piont,num_group))-min(reshape(data,num_piont,num_group)));

disp(['�������ݹ�����',int2str(data_length),'���㡣']);
disp(['��',int2str(num_group),'����Ϊһ��']);
disp(['������',int2str(num_piont),'��']);
disp(['ÿ������󲨶���Χ��',num2str(error_limit_max)]);
disp(['ÿ����ƽ��������Χ��',num2str(error_limit_mean)]);
y=0;

%%�������ݵľ�ֵ������ֵ
D_value_max=max(data)-min(data);
data_mean=mean(data);
disp(['����ֵΪ��',num2str(D_value_max)]);
disp(['ƽ��ֵΪ��',num2str(data_mean)]);

% data_mean=mean(mean(data));
% b=abs(data(:)-data_mean)<x;
% c=length(b(b==1));
% y=c
% [s,h]=size(data)
% y=c/(s*h)
% hist(data);
% data'

end

