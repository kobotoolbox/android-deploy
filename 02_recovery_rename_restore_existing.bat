@echo off
call scripts\00_install_recovery.bat
timeout /t 5 /nobreak
fastboot boot recovery/openrecovery-twrp-2.8.1.0-grouper.img
timeout /t 18 /nobreak
pause
echo Now copy the backup folder.
call scripts\01a_remove_data.bat
pause
call scripts\05_rename_folder.bat
call scripts\06_restore.bat
pause