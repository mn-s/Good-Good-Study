classdef Line
    %UNTITLED6 �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties
        p1;p2;
        color;
    end
    
    methods
        function obj=Line(x1,y1,x2,y2,c)
            obj.color=c;
            obj.p1=Point(x1,y1);
            obj.p2=Point(x2,y2);
            disp('Line constructing ��');
        end
    end
    
end

