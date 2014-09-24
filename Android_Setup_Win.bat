@ECHO off

:: The backup folder location should be changed to wherever the backup is located
:: The following path should be set to the location of your TWRP backup folder. 
:: Don't forget the trailing slash!

set backup_path=backup\


if not exist "%backup_path%system.ext4.win" (
	echo The backup folder doesn't exist...
	pause
	exit
)

echo.
echo.
echo.
echo ====STEP 1: BOOTLOADER============================
echo.
echo Connect phone by USB, then enter into bootloader mode 
echo (press volume down+power at the same time)
echo.
echo.
echo Press any key once that's done. 
echo.
echo.
echo.
echo On the next screen confirm Yes (with the power key)
pause > nul

::Unlock device
fastboot oem unlock
fastboot flash recovery openrecovery-twrp-2.8.0.1-grouper.img
fastboot reboot-bootloader

echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo ====STEP 2: RECOVERY============================
echo.
echo.
echo Enter phone into recovery mode (volume down x2, then power). 
echo.
echo.
echo. 
echo Once you are in the 'Team Win Recovery Project' menu and 
echo once Windows' 'installing drivers' process has finished, 
echo press any key to continue.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.	
echo.	
pause > nul
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
::Copy, restore, and delete TWRP backup
adb push "%backup_path%." /sdcard/twrp_backup
echo. 
echo Files copied - starting restore.
echo. 
adb shell twrp restore /sdcard/twrp_backup
adb shell rm -R /sdcard/twrp_backup

::Reboot
adb reboot
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo All done!
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
echo.
pause
