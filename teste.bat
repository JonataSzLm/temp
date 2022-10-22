@echo off

(
echo Nome do Computador: 
echo %computername%
echo Nome do Usuario: 
echo %username%
echo Processador: 
wmic cpu get name | findstr /V "Name"
echo Memoria:
wmic memorychip get capacity | findstr /V "Capacity"
echo Placa de Rede:
wmic nic get speed | findstr /V "Speed" | findstr /b "10"
echo HD/SSD:
wmic diskdrive get model,size | findstr /V "Model" | findstr /V "Size"
echo IP:
ipconfig | findstr "IPv4"
echo Numero Serial:
wmic bios get serialnumber | findstr /V "SerialNumber"
echo PrintAudit:
dir "C:\Program Files (x86)\Print Audit Infinite\client\" | findstr "paclient.exe"
) > %username%%.txt

start %username%.txt

exit