%编辑形状参数法fso1ve函数

function q=Refxz(p) %定义函数

%定义变量

a=p(1);

b=p(2);

global number; %定义迭代次数

number=number+1 ;

% 编写非线性方程组

q(1)=b/((4.79/4.29)^b- 1)-a;

q(2)=a/((37.71/28.31 )^a-1 )-b;

end %fso1ve函数编辑完成