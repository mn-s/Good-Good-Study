options = optimset('LargeScale','off','display','iter');
%��������ʹ���еȹ�ģ�㷨����ʾ��������
A=[-1,-2,-2; %���Բ���ʽԼ��ϵ������
    1, 2, 2];
b=[0;72];%���Բ���ʽԼ����������
x0=[10,10,10];%��ʼ������
[x,fval,exitflag,output]= fmincon(@confun1,x0,A,b,[],[],[],[],[],options)