%% DATOS PRONOSTICO TXT
%
%start
%addpath('/data4/matlab/USIPA/Johnson2_NPZD_PRON/FIGURAS/DATOS_ALERTAS/')
%addpath('/data4/matlab/USIPA/Johnson2_NPZD_PRON/FIGURAS/DATOS_CAMANCHACA/')
%
DATOS='/data4/matlab/USIPA/Johnson2_NPZD_PRON/FIGURAS/DATOS_ALERTAS/';
MES='202309/';
%
archivos=dir([DATOS MES '*.txt']);
N_archivos=length(archivos);
%
REPORTES_COMPLETOS{N_archivos}=zeros(1,N_archivos);
%
VARS_REPORTES=[' NM [m] sup' ;...
               ' T [°C] sup' ; ' T [°C] 05m' ; ' T [°C] 10m' ; ' T [°C] 15m' ; ' T [°C] 20m' ;...
               'S [PSU] sup' ; 'S [PSU] 05m' ; 'S [PSU] 10m' ; 'S [PSU] 15m' ; 'S [PSU] 20m' ;...
               'U [m/s] sup' ; 'U [m/s] 05m' ; 'U [m/s] 10m' ; 'U [m/s] 15m' ; 'U [m/s] 20m' ;...
               'V [m/s] sup' ; 'V [m/s] 05m' ; 'V [m/s] 10m' ; 'V [m/s] 15m' ; 'V [m/s] 20m'];
%
for i=1:N_archivos
    REPORTES_COMPLETOS{1,i}=importdata([archivos(i).folder '/' archivos(i).name]);
    REPORTES{1,i}.datos=REPORTES_COMPLETOS{1,i}.data;
    FECHAS{1,i}.fechas=cell2mat (REPORTES_COMPLETOS{1,i}.textdata(9:end,1));
    FECHAS{1,i}.AAMMDDhhmmss=[ FECHAS{1,i}.fechas(:,1:4) ...
                           FECHAS{1,i}.fechas(:,5:6) ...
                           FECHAS{1,i}.fechas(:,7:8) ...
                           FECHAS{1,i}.fechas(:,10:11) ...
                           FECHAS{1,i}.fechas(:,13:14) ...
                           FECHAS{1,i}.fechas(:,16:17)] ;
                       for j=1:length(FECHAS{1,i}.AAMMDDhhmmss)
    REPORTES{1,i}.fechas(j,1)=datenum( str2num(FECHAS{1,i}.AAMMDDhhmmss(j,1:4)), ...
                            str2num(FECHAS{1,i}.AAMMDDhhmmss(j,5:6)), ...
                            str2num(FECHAS{1,i}.AAMMDDhhmmss(j,7:8)), ...
                            str2num(FECHAS{1,i}.AAMMDDhhmmss(j,9:10)), ...
                            str2num(FECHAS{1,i}.AAMMDDhhmmss(j,11:12)), ...
                            str2num(FECHAS{1,i}.AAMMDDhhmmss(j,13:14)));
                       end
                       for k=1:21
    REPORTES{1,i}.INFO{k+1,1}=VARS_REPORTES(k,:);
                       end
    REPORTES{1,i}.INFO{1,1}='Tiempo (horas) Datenum - Datetime';
end
%               
nombre='REPORTES_SEPTIEMBRE2023.mat';
save(nombre,'REPORTES')                
                
                
                
                
                
                
