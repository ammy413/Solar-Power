function [ p ] = UIP_show( word )

data=xlsread('记录表单.xlsx','日常记录1-预测试',word);

p=data(:,1).*data(:,2);
c=data(:,2)/data(:,1)

figure;
title('U-I曲线图');
plot(data(:,1),data(:,2));
xlabel('电压U（V）');
ylabel('电流I（A）');
figure;
title('P-U曲线图');
plot(data(:,1),p);
xlabel('电压U（V）');
ylabel('功率P（W）');



figure
A=polyfit(data(:,1),data(:,2),4);
z=polyval(A,data(:,1));
plot(data(:,1),data(:,2),'r*',data(:,1),z,'b')
figure
polyfit(data(:,1),p,1);
end

