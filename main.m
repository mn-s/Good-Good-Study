%��ʱ���ԣ����������������ϵ���
%% 
tic;
%Initialize Matlab Parallel Computing Enviornment by Xaero | Macro2.cn
CoreNum=2; %�趨����CPU�����������ҵĻ�����˫�ˣ�����CoreNum=2
if parpool('local')<=0 %�жϲ��м��㻷���Ƿ���Ȼ����
parpool('open','local',CoreNum); %����δ���������������л���
else
disp('Already initialized'); %˵�����л����Ѿ�������
end

toc;
%% 
tic;
toc;