%1--����������ݶ�ȡ����

hh=open('����ͼ����.fig');

%�� ͼ��

ha=get(hh,'Children'); aa=get(ha(2),'Children');

xx=[]; yy=[];%�������

for ii=l:length(aa),

xx=[xx get(aa(ii),'XData')];%X �����

yy=[yy get(aa(ii);YData')];%Y �����

end

figwe; plot3(xx,yy,'o')%��ȡ���


