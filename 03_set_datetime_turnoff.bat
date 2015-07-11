@echo off 
:repeat

echo Waiting for device to become available...
:checkfordevice
timeout /t 1 > nul
adb shell exit 2> nul
if %errorlevel% neq 0 goto checkfordevice
echo Found device!

::This will only work if the Windows Locale is set to EN-US, i.e. date format ddd MM/DD/YYYYY
set hour=%time:~0,2%
if "%hour:~0,1%" == " " set hour=0%hour:~1,1%
set min=%time:~3,2%
if "%min:~0,1%" == " " set min=0%min:~1,1%
set secs=%time:~6,2%
if "%secs:~0,1%" == " " set secs=0%secs:~1,1%

set year=%date:~-4%
set month=%date:~4,2%
if "%month:~0,1%" == " " set month=0%month:~1,1%
set day=%date:~7,2%
if "%day:~0,1%" == " " set day=0%day:~1,1%

set datetimef=%year%%month%%day%.%hour%%min%%secs%

adb shell su 0 date -s %datetimef%

::Turn off device
adb shell reboot -p

goto repeat