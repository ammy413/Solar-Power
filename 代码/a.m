function [ y ] = a( word,x )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

data=xlsread('记录表单-未加密版.xlsx','预测试-仪表-day1',word)
data_mean=mean(mean(data));
b=abs(data(:)-data_mean)<x;
c=length(b(b==1));
y=c
[s,h]=size(data)
y=c/(s*h)
hist(data);
data'
end

