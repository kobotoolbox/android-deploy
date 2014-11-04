@echo off
for /f "tokens=1 delims=	" %%A in ('adb devices ^| find /V "List"') do (
	::pre-4.4 file structure
	adb shell mkdir -p /data/media/TWRP/BACKUPS/%%A
	adb shell mv /data/media/backup /data/media/TWRP/BACKUPS/%%A/backup
	::Android 4.4 file structure
	adb shell mkdir -p /data/media/0/TWRP/BACKUPS/%%A
	adb shell mv /data/media/0/backup /data/media/0/TWRP/BACKUPS/%%A/backup
	)