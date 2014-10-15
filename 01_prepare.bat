echo.
echo ##### wiping, unlocking and adding recovery 
echo.
fastboot oem unlock
fastboot flash recovery recovery/openrecovery-twrp-2.8.0.1-grouper.img
fastboot -w
fastboot reboot-bootloader