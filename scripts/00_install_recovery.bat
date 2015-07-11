@echo off
echo Installing Recovery
fastboot flash recovery recovery/openrecovery-twrp-2.8.5.1-grouper.img
fastboot reboot-bootloader