@echo off
net stop "FEEnviar"
echo  -----------------
C:\Windows\Microsoft.NET\Framework\v4.0.30319\InstallUtil.exe /u "C:\Version Sucursales\PuntoVenta\Servicios\Enviar\FacturacionElectronica.Enviar.exe"
pause
