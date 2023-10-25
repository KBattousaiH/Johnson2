%% DATOS CAMANCHACA XLSX
%
DATOS='/data4/matlab/USIPA/Johnson2_NPZD_PRON/FIGURAS/DATOS_CAMANCHACA/';
MES='20231020/';
archivos=dir([DATOS MES '*.xlsx']);
data=readtable([archivos.folder '/' archivos.name]);
%
% 5m PONTON SMA
F1=data(9:end,1);
H1=data(9:end,2);
f1=char(table2array(F1));
h1=char(table2array(H1));
DD1=str2num(f1(:,1:2));
MM1=str2num(f1(:,4:5));
AA1=str2num(f1(:,7:10));
hh1=str2num(h1(:,1:2));
mm1=str2num(h1(:,4:5));
ss1=str2num(h1(:,7:8));
DATA1(:,1)=str2num(char(table2array(data(9:end,3))))*0.7*44.661; %O2
DATA1(:,2)=str2num(char(table2array(data(9:end,5)))); %Temp
DATA1(:,3)=str2num(char(table2array(data(9:end,6)))); %Sal
%
% 5m Jaula 111
F2=data(9:end,7);
H2=data(9:end,8);
f2=char(table2array(F2));
h2=char(table2array(H2));
DD2=str2num(f2(:,1:2));
MM2=str2num(f2(:,4:5));
AA2=str2num(f2(:,7:10));
hh2=str2num(h2(:,1:2));
mm2=str2num(h2(:,4:5));
ss2=str2num(h2(:,7:8));
DATA2(:,1)=str2num(char(table2array(data(9:end,9))))*0.7*44.661; %O2
DATA2(:,2)=str2num(char(table2array(data(9:end,11)))); %Temp
DATA2(:,3)=str2num(char(table2array(data(9:end,12)))); %Sal
%
% 10m PONTON SMA
F3=data(9:end,13);
H3=data(9:end,14);
f3=char(table2array(F3));
h3=char(table2array(H3));
DD3=str2num(f3(:,1:2));
MM3=str2num(f3(:,4:5));
AA3=str2num(f3(:,7:10));
hh3=str2num(h3(:,1:2));
mm3=str2num(h3(:,4:5));
ss3=str2num(h3(:,7:8));
DATA3(:,1)=str2num(char(table2array(data(9:end,15))))*0.7*44.661; %O2
DATA3(:,2)=str2num(char(table2array(data(9:end,17)))); %Temp
DATA3(:,3)=str2num(char(table2array(data(9:end,18)))); %Sal
%
% 10m Jaula 111 SMA
F4=data(9:end,19);
H4=data(9:end,20);
f4=char(table2array(F4));
h4=char(table2array(H4));
DD4=str2num(f4(:,1:2));
MM4=str2num(f4(:,4:5));
AA4=str2num(f4(:,7:10));
hh4=str2num(h4(:,1:2));
mm4=str2num(h4(:,4:5));
ss4=str2num(h4(:,7:8));
DATA4(:,1)=str2num(char(table2array(data(9:end,21))))*0.7*44.661; %O2
DATA4(:,2)=str2num(char(table2array(data(9:end,23)))); %Temp
DATA4(:,3)=str2num(char(table2array(data(9:end,24)))); %Sal
%
% 15m Jaula 111 SMA
F5=data(9:end,25);
H5=data(9:end,26);
f5=char(table2array(F5));
h5=char(table2array(H5));
DD5=str2num(f5(:,1:2));
MM5=str2num(f5(:,4:5));
AA5=str2num(f5(:,7:10));
hh5=str2num(h5(:,1:2));
mm5=str2num(h5(:,4:5));
ss5=str2num(h5(:,7:8));
DATA5(:,1)=str2num(char(table2array(data(9:end,27))))*0.7*44.661; %O2
DATA5(:,2)=str2num(char(table2array(data(9:end,29)))); %Temp
DATA5(:,3)=str2num(char(table2array(data(9:end,30)))); %Sal
%
% 20m Jaula 111 SMA
F6=data(9:end,31);
H6=data(9:end,32);
f6=char(table2array(F6));
h6=char(table2array(H6));
DD6=str2num(f6(:,1:2));
MM6=str2num(f6(:,4:5));
AA6=str2num(f6(:,7:10));
hh6=str2num(h6(:,1:2));
mm6=str2num(h6(:,4:5));
ss6=str2num(h6(:,7:8));
DATA6(:,1)=str2num(char(table2array(data(9:end,33))))*0.7*44.661; %O2
DATA6(:,2)=str2num(char(table2array(data(9:end,35)))); %Temp
DATA6(:,3)=str2num(char(table2array(data(9:end,36)))); %Sal
%
F7=data(9:end,37);
H7=data(9:end,38);
f7=char(table2array(F7));
h7=char(table2array(H7));
DD7=str2num(f7(:,1:2));
MM7=str2num(f7(:,4:5));
AA7=str2num(f7(:,7:10));
hh7=str2num(h7(:,1:2));
mm7=str2num(h7(:,4:5));
ss7=str2num(h7(:,7:8));
DATA7(:,1)=str2num(char(table2array(data(9:end,39)))); % NM
%
for i=1:length(DD1)
    Fecha1(i,1)=datenum(AA1(i),MM1(i),DD1(i),hh1(i),mm1(i),ss1(i));
end
for i=1:length(DD2)
    Fecha2(i,1)=datenum(AA2(i),MM2(i),DD2(i),hh2(i),mm2(i),ss2(i));
end
for i=1:length(DD3)
    Fecha3(i,1)=datenum(AA3(i),MM3(i),DD3(i),hh3(i),mm3(i),ss3(i));
end
for i=1:length(DD4)
    Fecha4(i,1)=datenum(AA4(i),MM4(i),DD4(i),hh4(i),mm4(i),ss4(i));
end
for i=1:length(DD5)
    Fecha5(i,1)=datenum(AA5(i),MM5(i),DD5(i),hh5(i),mm5(i),ss5(i));
end
for i=1:length(DD6)
    Fecha6(i,1)=datenum(AA6(i),MM6(i),DD6(i),hh6(i),mm6(i),ss6(i));
end
for i=1:length(DD7)
    Fecha7(i,1)=datenum(AA7(i),MM7(i),DD7(i),hh7(i),mm7(i),ss7(i));
end
% for i=1:length(ncread(his3,t))
%     FechaSim(i,1)=datenum(year,imonth,day,i-1,0,0);
% end
%
Fecha_P5=Fecha1(1:12:end,1);
PONTON_5m=DATA1(1:12:end,:);
%
Fecha_P10=Fecha3(1:12:end,1);
PONTON_10m=DATA3(1:12:end,:);
%
Fecha_J5=Fecha2(1:12:end,1);
JAULA_5m=DATA2(1:12:end,:);
%
Fecha_J10=Fecha4(1:12:end,1);
JAULA_10m=DATA4(1:12:end,:);
%
Fecha_J15=Fecha5(1:12:end,1);
JAULA_15m=DATA5(1:12:end,:);
%
Fecha_J20=Fecha6(1:12:end,1);
JAULA_20m=DATA6(1:12:end,:);
%
Fecha_NM=Fecha7(1:12:end,1);
MELINKA_NM=DATA7(1:12:end,:);
%
VARS=['O2[mmol/m3]';'  T  [°C]  '; ' Sal [PSU] '];
%
%
DATOS_CAMANCHACA{1,1}.NM=MELINKA_NM;
DATOS_CAMANCHACA{1,1}.Fecha_NM=Fecha_NM;
DATOS_CAMANCHACA{1,1}.INFO{1,1}='Melinka';
DATOS_CAMANCHACA{1,1}.INFO{2,1}='Tiempo (horas) Datenum - Datetime';
DATOS_CAMANCHACA{1,1}.INFO{3,1}=' NM [m] ';
%
DATOS_CAMANCHACA{1,2}.Datos_5m=PONTON_5m;
DATOS_CAMANCHACA{1,2}.Fecha_5m=Fecha_P5;
DATOS_CAMANCHACA{1,2}.Datos_10m=PONTON_10m;
DATOS_CAMANCHACA{1,2}.Fecha_10m=Fecha_P10;
DATOS_CAMANCHACA{1,2}.INFO{1,1}='Pontón';
DATOS_CAMANCHACA{1,2}.INFO{2,1}='Tiempo (horas) Datenum - Datetime';
                       for k=1:3
DATOS_CAMANCHACA{1,2}.INFO{k+2,1}=VARS(k,:);
                       end
%
DATOS_CAMANCHACA{1,3}.Datos_5m=JAULA_5m;
DATOS_CAMANCHACA{1,3}.Fecha_5m=Fecha_J5;
DATOS_CAMANCHACA{1,3}.Datos_10m=JAULA_10m;
DATOS_CAMANCHACA{1,3}.Fecha_10m=Fecha_J10;
DATOS_CAMANCHACA{1,3}.Datos_15m=JAULA_15m;
DATOS_CAMANCHACA{1,3}.Fecha_15m=Fecha_J15;
DATOS_CAMANCHACA{1,3}.Datos_20m=JAULA_20m;
DATOS_CAMANCHACA{1,3}.Fecha_20m=Fecha_J20;
DATOS_CAMANCHACA{1,3}.INFO{1,1}='Jaula 111';
DATOS_CAMANCHACA{1,3}.INFO{2,1}='Tiempo (horas) Datenum - Datetime';
                       for k=1:3
DATOS_CAMANCHACA{1,3}.INFO{k+2,1}=VARS(k,:);
                       end
%
nombre='DATOS_20_OCTUBRE_2023.mat';
save(nombre,'DATOS_CAMANCHACA')  
