 


clc;
clear all;
close all;

addpath('../数据记录');
% [ y ] = a( 'G5:Y9',0.5 )
% [ p ] = UIP_show( 'C7:D25' )
% [ p ] = UIP_show( 'G7:H25' )
% [ p ] = UIP_show( 'J7:K25' )
% data=xlsread('记录表单-未加密版.xlsx','预测试-仪表-day1','G5:Y9')
% data_mean=mean(mean(data))
% b=abs(data(:)-data_mean)<0.6
% c=length(b(b==1))
[ y ] = Error_limit( 'B6:B95',45 );
% a=xlsread('记录表单-未加密版.xlsx','Sheet1','B3:D3')%对的
% 'G5:Y9'
% 'G5:Y9'+1