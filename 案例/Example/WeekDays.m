classdef WeekDays
    %UNTITLED3 �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties
    end
    
    methods
        function tf=isMeetingDay(obj)
            tf=~(WeekDays.Tuesday==obj);
        end
    end
    enumeration
        Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday
    end
end

