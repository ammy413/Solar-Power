
%�༭�Ĳ�����fso1ve����

function q=Ref4(p) %���庯��

%�������

IL=p(1);

I0=p(2);

A=p(3);

Rs=p(4);

global number; %�����������

number=number+1 ;

%��д�����Է�����

q(1)=IL-I0*(exp(4.79*Rs/A)-1)-4.79;

q(2)=IL-I0*(exp(37.71/A)-1);

q(3)=IL-I0*(exp((28.31+4.29*Rs)/A)-1)-4.29;

q(4)=4.29/28.31-(I0/A*exp((28.31+4.29*Rs)/A))/(1+I0*Rs/A*exp((28.31+4.29*Rs)/A));

end %fso1ve�����༭���