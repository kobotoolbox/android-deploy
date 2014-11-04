@ECHO off
call scripts\01_prepare.bat
echo Waiting for recovery to load...
echo.
echo.
timeout /t 18 /nobreak
adb shell rm -r /data/media/*
adb shell mkdir -p /data/media/0
echo Now copy the backup folder in Explorer/Finder to the device.
pause
::renaming backup folder so restore can be done inside TWRP
call scripts\05_rename_folder.bat
adb shell twrp restore backup	
pause 
