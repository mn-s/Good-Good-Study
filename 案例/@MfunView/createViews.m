%@MfunView/ createViews.m
function createViews(funevalobj)

%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
viewobj=MfunView(funevalobj);
viewobj.Hsurf=surf(viewobj.FunObj.Data.X,...
    viewobj.FunObj.Data.Y,viewobj.FunObj.Data.Z);
shading interp
end

