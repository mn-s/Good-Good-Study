function main()
%UNTITLED4 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
hobj=MClock;
hl=event.listener(hobj,'Alarm',@CallbackFunction);
hobj.AlarmSetChange(1);
end
function CallbackFunction(source,eventData)
alarm=source.Enable
disp('�¼���Ӧ��');
end

