@echo off
C:\Windows\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe "C:\SERQ\Servicios\Respuesta\FacturacionElectronica.Respuesta.exe"
echo  -----------------
net start "FERecibir"
pause

 