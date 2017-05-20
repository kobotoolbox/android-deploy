Instructions for installing Android image on Mac OSX
====================================================

Updated 8/10/2016

A script to simplify the setup of multiple brand new Android devices based on a single configuration. At its core it relies on a full system backup created in advance by an experienced user through TWRP (Team Win Recovery Project). 

Instructions regarding buttons to be pressed are specific to Nexus 7 devices, but the script should be universal for all Android devices.

Instructions (Specific to Mac OSX + Nexus 7 tablets) 
----------------------------------------------------
1. Start tablet in bootloader mode (press power and volume-down)
 Drag `0_unlock.sh` into Terminal and press Enter
1. On tablet, confirm 'Yes - Unlock bootloader...' by pressing the power key. 
1. (After tablet has started up) use Android File Transfer app to copy the 'backup' folder to the tablet (drag and drop the folder to the root of the device)
1. (After copying is done) Turn off device and restart into bootloader mode (see step 1)
1. Drag `1_recovery-mac.sh` into Terminal, press Enter
1. (Once tablet restarted) run `bash 2_open_recovery.sh`
1. (Once Recover has opened) Run `bash 3_restore.sh`
1. Tablet will restore image; USB can be unplugged during that process. Once restore process is completed (about 2 minutes), press Reboot > System. 
1. Set time and date in Android Settings	


Script includes
---------------
* rooting
* installation of TWRP recovery
* copy TWRP backup 
* restore TWRP backup

Time requirements
----------------
* Creating a TWRP backup from a device that has TWRP installed: 10 minutes
* Computer configuration (see prerequisites): 5 minutes
* Restoring image with this script: 8 minutes

Prerequisites
-------------
* Android [adb and fastboot](https://code.google.com/p/adb-fastboot-install/) installed and added to environment path. To add to environment path: 
	* note location where adb and fastboot were installed, e.g. `.android-sdk-macosx/platform-tools`
	* in home directory create file `.bash_profile` and add `export PATH=$PATH:~/.android-sdk-macosx/platform-tools/` 

* Download and install [Android file manager](https://www.android.com/filetransfer/)
* existing [TWRP backup](https://www.google.com/search?q=create+backup+in+TWRP) from the same device (or same model) located in a sub folder 'backup' 
* [Download](https://github.com/kobotoolbox/android-deploy/archive/master.zip) this repository and unzip it

