function f= Fcn(x)
%��������
%�˴���ʾ��ϸ˵��
f=cumsum((x-1./(1:100)).^2);
f=f(100);



end

