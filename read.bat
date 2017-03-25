@ECHO OFF
set /p user="Short user: "

ECHO "Windows Registry Editor Version 5.00">temp
ECHO "">>temp
ECHO "[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Printers\%user%\PrinterDriverData]">>temp

type generic >>temp
del generic
ren temp generic