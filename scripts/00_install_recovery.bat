@echo off
echo Installing Recovery
fastboot flash recovery recovery/twrp.img
fastboot reboot-bootloader