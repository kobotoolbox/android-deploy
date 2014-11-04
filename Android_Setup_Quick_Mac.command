fastboot oem unlock
fastboot flash recovery recovery/openrecovery-twrp-2.8.1.0-grouper.img
fastboot reboot-bootloader
echo "Wait for the device to reboot, then continue."
read
fastboot boot recovery/openrecovery-twrp-2.8.1.0-grouper.img
echo "Wait for Recovery to load, then continue."
read
echo ""
echo "Now copy the backup folder to the tablet"
echo "Wait for the copying to finish, then continue."
read
echo ""
echo "As soon as the recovery process starts, you can unplug"
echo "the device and start with the next one."
adb twrp restore backup
read
