# This script expects adb and fastboot to be installed. 
# To install them use this scipt https://code.google.com/p/adb-fastboot-install/
fastboot oem unlock
fastboot flash recovery recovery/openrecovery-twrp-2.8.1.0-grouper.img
fastboot reboot-bootloader
echo ""
read -p "Wait for the device to reboot, then press Enter to continue."
fastboot boot recovery/openrecovery-twrp-2.8.1.0-grouper.img
echo 
read -p "Wait for Recovery to load, then press Enter to continue."
echo ""
echo "Now copy the backup folder to the tablet using Android File Transfer." 
# To copy files on Mac see https://www.android.com/filetransfer
read -p "Wait for the copying to finish, then press Enter to continue."
read
echo ""
echo "As soon as the recovery process starts, you can unplug"
echo "the device and start with the next one."
# restoring the backup (default location on 4.4 devices)
adb shell twrp restore /data/media/0/backup
# restoring the backup (default location on pre-4.4 devices)
adb shell twrp restore /data/media/backup
read
