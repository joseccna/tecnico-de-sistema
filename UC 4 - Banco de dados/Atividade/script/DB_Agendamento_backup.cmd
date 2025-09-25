@echo off

REM --- Script para executar um backup do SQL Server ---
 
echo Iniciando a execucao do script de backup SQL...
 
REM Parâmetros:

REM -S "(localdb)\MSSQLLocalDB" 

REM -E               

REM -i "C:\DB\DB_Agendamento_backup.sql"
 
sqlcmd -S "(localdb)\MSSQLLocalDB" -E -i "C:\DB\DB_Agendamento_backup.sql"
 
echo.

echo Script finalizado. Verifique a pasta de destino para o arquivo de backup.
 
pause
 