
%�༭�������fsolve����
function [ q ] = Ref5( p )%���庯��

%�������

IL=p(1);

I0=p(2);

A=p(3);

Rs=p(4);

Rsh=p(5);

global number; %�����������

number=number+1 ;

%��д�����Է�����

q(1)=IL-I0*(exp(4.79*Rs/A)-1)-4.79*Rs/Rsh-4.79;

q(2)=IL-I0*(exp(37.71/A)-1)-37.71/Rsh;

q(3)=IL-I0*(exp((28.31+4.29*Rs)/A)-1)-(28.31+4.29*Rs)/Rsh-4.29;

q(4)=4.29/28.31-(I0/A*exp((28.31+4.29*Rs)/A)+1/Rsh)/(1+I0*Rs/A*exp((28.31+4.29*Rs)/A)+Rs/Rsh);

q(5)=(I0/A*exp(4.79*Rs/A)+1/Rsh)/(1+I0*Rs/A*exp(4.79*Rs/A)+Rs/Rsh)-1/Rsh;

 %fsolve�����༭���

end
