
% 2.���ȱ�Ե����ʱ����
plot3([25 25 -25 -25 25],[-60 60 60 -60 -60],zeros(1,5),'-')
hold on
axis equal
num = 1;
tt = 0:0.02:2*pi;asin(5/6)
plot(25.*sin(tt),25.*cos(tt))
for alpha = 0:0.02:asin(5/6)
    x = linspace(-25,25,20);                    % ƽ�����x����
    y = sqrt(625 - x.^2);                       % ƽ�����y����
    t = sqrt(y.^2+900-60.*cos(alpha).*y);       % �ᵽ���������
    cosBelta =( y.^2+t.^2-30^2)./(2*t.*y);
    x1 = x;                                     % ���ű�Ե��x1
    Belta = acos(cosBelta);
    y1 =y - (60-y).*cos(Belta);                 % ���ű�Ե��y1
    z1 = - (60-y).*sin(Belta);                  % ���ű�Ե��z1
    plot3(x1,y1,z1,'r')
    xlabel('x')
    ylabel('y')
    zlabel('z')
    view(-56,22)
    mov(num) = getframe(gcf);
    num = num+1;
end
movie2avi(mov, 'mymovie2.avi', 'compression', 'None')