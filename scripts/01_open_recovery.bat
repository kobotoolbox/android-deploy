echo ##### adding recovery and rebooting into recovery
fastboot flash recovery recovery/openrecovery-twrp-2.8.5.1-grouper.img
::fastboot erase userdata
fastboot reboot-bootloader
timeout /t 5 /nobreak
fastboot boot recovery/openrecovery-twrp-2.8.5.1-grouper.img