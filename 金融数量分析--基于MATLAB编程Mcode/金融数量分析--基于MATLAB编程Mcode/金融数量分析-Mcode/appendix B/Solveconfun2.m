options = optimset('LargeScale','off','display','off');
%��������ʹ���еȹ�ģ�㷨������ʾ��������
lb=zeros(1,5);%lb=[0,0,....,0]
ub=10*ones(1,5); %ub=[10,10,....,10]
a=[1,2,3,4,5];
b=15;
x0=ones(1,5);%x0=[1,1,....,1]
[x,fval,exitflag,output]= fmincon(@(x) confun2(x,a),x0,[],[],[],[],lb,ub,@(x)mycon2(x,b),options)