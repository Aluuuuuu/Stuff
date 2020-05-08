@echo off
mode con: cols=120 lines=54
echo Motherboard
echo.
wmic baseboard get manufacturer,product,description
echo.
echo CPU
echo.
wmic cpu get manufacturer,name,maxclockspeed,description
echo.
echo GPU
echo.
wmic path Win32_VideoController get name,description
echo.
echo Memory
echo.
wmic memorychip get banklabel,devicelocator,capacity,speed,description
echo.
echo Other info
echo.
ver
systeminfo | findstr /C:"OS Name" /C:"OS Version" /C:"BIOS Version" /C:"System Locale" /C:"System Type" /C:"System Manufacturer" /C:"System Model" /C:"Registered Owner" /C:"Registered Organisation" /C:"OS Build Type" /C:"OS Configuration" /C:"Host Name" /C:"Total Physical Memory" /C:"Time Zone" /C:"Boot Device" /C:"Original Install Date" /C:"System Boot Time" /C:"Processor(s)" /C:"Network Card(s)" /C:"Hyper-V Requirements"
pause
