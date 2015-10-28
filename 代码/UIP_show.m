function [ p ] = UIP_show( word )

data=xlsread('��¼��.xlsx','�ճ���¼1-Ԥ����',word);

p=data(:,1).*data(:,2);
c=data(:,2)/data(:,1)

figure;
title('U-I����ͼ');
plot(data(:,1),data(:,2));
xlabel('��ѹU��V��');
ylabel('����I��A��');
figure;
title('P-U����ͼ');
plot(data(:,1),p);
xlabel('��ѹU��V��');
ylabel('����P��W��');



figure
A=polyfit(data(:,1),data(:,2),4);
z=polyval(A,data(:,1));
plot(data(:,1),data(:,2),'r*',data(:,1),z,'b')
figure
polyfit(data(:,1),p,1);
end

