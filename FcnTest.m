function f= FcnTest( x )
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
n=length(hfunarray);
syms x y
for i=1:n
    hf=hfunarray{i};
    v=[x,y];
    grad=jacobian(hf,v);
    Y(i,:)=subs(grad,v,X);
end
end

