function [ p ] = UIP_show( word )

data=xlsread('��¼��.xlsx','�ճ���¼1-Ԥ����',word);

p=data(:,1).*data(:,2);


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
end

