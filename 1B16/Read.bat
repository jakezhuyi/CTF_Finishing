@ECHO 
::set /p user= %username%

ECHO Windows Registry Editor Version 5.00>temp
ECHO [HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Print\Printers\%username%\PrinterDriverData]>>temp

ECHO "ChangeID"=dword:03419db6%NL%"StatusExt"=dword:00000000>> temp
ECHO "Status"=dword:00000080 >>temp
ECHO "Name"="1B16-%username%" >>temp
type 1B16.reg >>temp
del generic.reg
ren temp generic.reg