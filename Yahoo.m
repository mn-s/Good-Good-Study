function [Date,AdjClose,Open,High,Low,Close,Volume]=Yahoo(StockName, StartDate, EndDate, Freq)
% ������� Financial Data
% StockName ֤ȯ���루�Ϻ� .ss  ���� .sz)
% StartDate, EndDate ʱ��εĿ�ʼ���������
% Freq Ƶ��
% This engine is used for a rapid searching in Yahoo!Finance for retriving
% Financial Data.
%%
%����ʱ������
startdate=StartDate;
enddate=EndDate;
%�ַ����仯
ms=num2str(str2double(datestr(startdate, 'mm'))-1);
ds=datestr(startdate, 'dd');
ys=datestr(startdate, 'yyyy');
me=num2str(str2double(datestr(enddate, 'mm'))-1);
de=datestr(enddate, 'dd');
ye=datestr(enddate, 'yyyy');

url2Read=sprintf('http://ichart.finance.yahoo.com/table.csv?s=%s&a=%s&b=%s&c=%s&d=%s&e=%s&f=%s&g=%s&ignore=.csv', StockName, ms, ds, ys, me, de, ye, Freq);
s=urlread(url2Read);

[Date,Open,High,Low,Close,Volume,AdjClose]=strread(s, '%s %s %s %s %s %s %s', 'delimiter',',');

%�洢M�ļ�
root=[pwd,'\'];
filename=[root,StockName,'.xls'];
xlswrite(filename,[Date,AdjClose,Open,High,Low,Close,Volume])

%����ת�����
Date(1)=[];AdjClose(1)=[];Open(1)=[];High(1)=[];Low(1)=[];Close(1)=[];Volume(1)=[];
row=size(Date,1);
for i =1:row
    Date_temp(i,1)=datenum(cell2mat(Date(i)),'yyyy-mm-dd');
    AdjClose_temp(i,1)=str2double(cell2mat(AdjClose(i)));
    Open_temp(i,1)=str2double(cell2mat(Open(i)));
    High_temp(i,1)=str2double(cell2mat(High(i)));
    Low_temp(i,1)=str2double(cell2mat(Low(i)));
    Close_temp(i,1)=str2double(cell2mat(Close(i)));
    Volume_temp(i,1)=str2double(cell2mat(Volume(i)));
end
Date=Date_temp;AdjClose=AdjClose_temp;Open=Open_temp;High=High_temp;Low=Low_temp;Close=Close_temp;Volume=Volume_temp;
%save(filename,'Stock_Price');
end


