function [ y ] = a( word,x )


data=xlsread('��¼����-δ���ܰ�.xlsx','Ԥ����-�Ǳ�-day1',word)
data_mean=mean(mean(data));
b=abs(data(:)-data_mean)<x;
c=length(b(b==1));
y=c
[s,h]=size(data)
y=c/(s*h)
hist(data);
data'

end

