echo ##### wiping, unlocking and adding recovery 
fastboot oem unlock
fastboot flash recovery recovery/openrecovery-twrp-2.8.1.0-grouper.img
::fastboot erase userdata
fastboot reboot-bootloader
timeout /t 5 /nobreak
fastboot boot recovery/openrecovery-twrp-2.8.1.0-grouper.img