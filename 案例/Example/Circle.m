classdef Circle
    %UNTITLED7 �˴���ʾ�йش����ժҪ
    %   �˴���ʾ��ϸ˵��
    
    properties
        Radius=0;
    end
    
    methods
        function obj=Circle(radius)
            if nargin>0
                obj.Radius=radius;
            end
            
        end
        function S=GetArea(obj)
            S=(obj.Radius)^2*pi;
        end
    end
    
end

