@echo off

:repeat

call scripts\00_install_recovery.bat
timeout /t 5 /nobreak

call scripts\01_boot_recovery.bat

echo Waiting for device to become available...
:checkfordevice
timeout /t 1 > nul
adb shell exit 2> nul
if %errorlevel% neq 0 goto checkfordevice
echo Found device!

call scripts\05_rename_folder.bat

call scripts\06_restore.bat

goto repeat