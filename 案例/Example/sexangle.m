function [S,L]=sexangle(N,R,str)
%
%
%
switch nargin
    case 0
        N=100;R=1;str='-b';
    case 1
        R=1;str='-b';
    case 2
        str='-b';
    case 3
        ;
    otherwise
        error('������̫��');
end;
t=0:2*pi/N:2*pi;
x=R*sin(t);
y=R*cos(t);
if nargout==0
    plot(x,y,str);
elseif nargout>2
    error('������̫��');
else
    S=N*R*R*sin(2*pi/N)/2;
    L=2*N*R*sin(pi/N);
    fill(x,y,str);
end
axis equal square
box on 
shg

    