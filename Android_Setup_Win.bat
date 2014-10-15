@ECHO off

:: The backup folder location should be changed to wherever the backup is located
:: The following path should be set to the location of your TWRP backup folder. 
:: Don't forget the trailing slash!

set backup_path=backup\



:: create a unique timestamp
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set timestamp=%mydate%_%mytime% 

if not exist "%backup_path%system.ext4.win" (
	echo There is no backup inside the %backup_path% folder. 
	echo.
	echo.
	pause
	exit
) >> "logs\log_%timestamp%.txt" 2>&1

set /p id="Enter device number: " %=%
(echo ##### Device number: %id% & echo. ) >> "logs\log_%timestamp%.txt" 2>&1
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
echo.
echo.
echo On your tablet/phone screen confirm Yes with the power key

::Wipe, Unlock, and install recovery
call 01_prepare.bat >> "logs\log_%timestamp%.txt" 2>&1

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
pause 
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
echo Copying the files to your device. This will take several minutes...
echo.
echo.
echo.
echo.
call 02_copybackup.bat >> "logs\log_%timestamp%.txt" 2>&1
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
echo Files copied - starting restore.
echo. 
echo. 
echo. 
echo. 

pause
call 03_restore.bat >> "logs\log_%timestamp%.txt" 2>&1

::Reboot
(
	echo.
	echo ##### rebooting
	echo.
	adb reboot
) >> "logs\log_%timestamp%.txt" 2>&1	
(
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
) >> "logs\log_%timestamp%.txt" 2>&1	
pause
