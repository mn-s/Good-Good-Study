classdef MClock < handle
    %UNTITLED2 �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties
        Enable=false;
        
    end
    
    methods
        function obj=MClock(IsEnable)
            if nargin ~=0
            obj.Enable=IsEnable;
            end
            hl=addlistener(obj,'Alarm',@CallbackFunction);
           
        end
        function AlarmSetChange(obj,IsEnable)
            if IsEnable~=obj.Enable
                obj.Enable=IsEnable;
                notify(obj,'Alarm');
              
            end
        end
        function CallbackFunction(source,eventData)
            alarm=source.Enable;
            disp('�¼���Ӧ��');
        end
        
    end
   events
       Alarm
   end
    
    
end

