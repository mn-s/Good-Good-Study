%(1)���ⶨ�� 
g='circleg';        %��λԲ 
b='circleb1';       %�߽���Ϊ������ 
c=1;a=0;f=1; 
%��2��������ʼ������������ 
[p,e,t]=initmesh(g);  
%��3������ֱ���õ��������Χ�ڵĺϸ�� 
error=[]; err=1; 
while err > 0.01, 
[p,e,t]=refinemesh(g,p,e,t); 
u=assempde(b,p,e,t,c,a,f);  %�����ֵ�� 
exact=(1-p(1,:).^2-p(2,:).^2)/4; 
err=norm(u-exact',inf); 
error=[error err]; 
end 
%�����ʾ 
subplot(2,2,1),pdemesh(p,e,t); 
subplot(2,2,2),pdesurf(p,t,u) 
subplot(2,2,3),pdesurf(p,t,u-exact')