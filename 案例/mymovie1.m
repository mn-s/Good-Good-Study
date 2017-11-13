% 1.���ϸֽ�ľ������
num = 1;
for alpha = 0:0.015:asin(5/6)
    plot3([25 25 -25 -25 25],[-60 60 60 -60 -60],zeros(1,5),'-')
    hold on
    axis equal
    tt = 0:0.01:2*pi;asin(5/6);
    plot(25.*sin(tt),25.*cos(tt))
    x = linspace(-25,25,20);                    % ƽ�����x����
    y = sqrt(625 - x.^2);                       % ƽ�����y����
    t = sqrt(y.^2+900-60.*cos(alpha).*y);       % �ᵽ���������
    cosBelta =( y.^2+t.^2-30^2)./(2*t.*y);
    x1 = x;                                     % ���ű�Ե��x1
    Belta = acos(cosBelta);
    y1 =y - (60-y).*cos(Belta);                 % ���ű�Ե��y1
    z1 = - (60-y).*sin(Belta);                  % ���ű�Ե��z1
    plot3(x1,y1,z1,'r')                         % �������ȱ�Ե��
    handle = plot3(x1,y1,z1,'r');
    set(handle,'linewidth',3)
    xx = reshape([x1;x],1,[]);
    yy = reshape([y1;y],1,[]);
    zz = reshape([z1;zeros(1,20)],1,[]);
    for i = 1:2:40                              % ���ľ��
        line([xx(i),xx(i+1)],[yy(i),yy(i+1)],[zz(i),zz(i+1)])
    end
    x2 = x;                                     % �ֽ�x2
    y2 = y - t.*cos(Belta);                     % �ֽ�y2
    z2 = - t.*sin(Belta);                       % �ֽ�z2
    plot3(x2,y2,z2);                            % �����ֽ�
    xlabel('x')
    ylabel('y')
    zlabel('z')
    view(-131,32)
    hold off
    mov(num) = getframe(gcf);
    num = num+1;
end
movie2avi(mov, 'mymovie1.avi', 'compression', 'None')
