classdef MClockFun <handle
    %UNTITLED3 �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties
         ListenerHandle;
    end
    
    methods
        function obj=MClockFun(MClock_obj)
            h1=addlistener(MClock_obj,'Alarm',@MClock.listenMyEvent);
            obj.ListenerHandle=h1;
        end
    end
    methods (Static=true)
        function listenMyEvent(obj,src,~)
            disp('Alarm')
            figure(1)
        end
    end
    
end

