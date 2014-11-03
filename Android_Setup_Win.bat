@ECHO off

:: The backup folder location should be changed to wherever the backup is located
:: The following path should be set to the location of your TWRP backup folder. 
:: Don't forget the trailing slash!

set backup_path=backup\

:: create a unique timestamp and log file name 
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set mydate=%%c-%%a-%%b)
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set /p id="Enter device number: " %=%
set logfile=logs\%mydate%_%mytime%_%id%.txt

:: Abort if there is no backup 
if not exist "%backup_path%system.ext4.win" (
	echo There is no backup inside the %backup_path% folder. 
	echo No backup found. >> "%logfile%" 2>&1
	echo.
	pause
	exit
) 

cls
echo ====STEP 1: BOOTLOADER==========================================================
echo.
echo Connect device by USB, then enter into bootloader mode 
echo (press volume down+power at the same time)
echo.
echo.
echo Press any key once that's done. 
pause > nul
cls
echo Wiping and unlocking device; installing recovery. This will take about 30 sec. 
echo.
echo If you see a question on your tablet screen, confirm Yes using the power key.

	::Wipe, Unlock, and install recovery
	call 01_prepare.bat >> "%logfile%" 2>&1

cls
echo ====STEP 2: RECOVERY============================================================
echo.
timeout /t 15 /nobreak

echo Copying the files to your device. This will take about 6 minutes.

	::Copying
	call 02_copybackup.bat >> "%logfile%" 2>&1

cls
echo Files have been copied to your device and are now being restored.
echo This process takes about 2 minutes.

	::Restore backup
	call 03_restore.bat >> "%logfile%" 2>&1

	::Reboot
	call 04_reboot.bat >> "%logfile%" 2>&1

cls
echo ====Rebooting. Backup script completed.==========================================
echo Done. >> "%logfile%" 2>&1	
pause