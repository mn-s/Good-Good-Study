%һ������

%��ȡMicrosoft Corporation����,  �����MSFT��������finance.yahoo.com�ҵ�
[DateV,PriceV]=YahooData('000001.ss', '01/01/2000', '10/31/2015', 'd');
%��ͼ
%Dates= datestr(DateV);
plot(DateV,PriceV);