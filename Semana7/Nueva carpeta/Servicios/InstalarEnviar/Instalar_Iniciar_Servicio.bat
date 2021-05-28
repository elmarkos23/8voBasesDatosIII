@echo off
C:\Windows\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe "C:\SERQ\Servicios\Enviar\FacturacionElectronica.Enviar.exe"
echo  -----------------
net start "FEEnviar"
pause

 