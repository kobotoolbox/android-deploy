@ECHO off
call 01_prepare.bat
echo Waiting for recovery to load...
echo.
echo.
timeout /t 18 /nobreak
adb shell rm -r /data/media/*
adb shell mkdir -p /data/media/0
::adb shell rm -r /data/media/TWRP/BACKUPS/*
::adb shell rm -r /data/media/odk/*
::adb shell rm -r /data/media/0/*
::adb shell rm -r /data/media/10/*
echo Now copy the backup folder in Explorer/Finder to the device.
pause
::renaming folders
call 05_rename_folder.bat
adb shell twrp restore backup	
pause 
