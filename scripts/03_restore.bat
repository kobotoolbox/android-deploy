echo ##### restoring
adb shell twrp restore /sdcard/backup/twrp_backup
::Delete the backup folder
adb shell rm -R /sdcard/backup/twrp_backup