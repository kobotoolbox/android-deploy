Instructions for installing Android image on Mac OSX
====================================================

Updated 9/21/2017

A script to simplify the setup of multiple brand new Android devices based on a single configuration. At its core it relies on a full system backup created in advance by an experienced user through TWRP (Team Win Recovery Project). 

Instructions regarding buttons to be pressed are specific to Nexus 7 devices, but the script should be universal for all Android devices.

Setting up ADB and Fastboot
---------------------------
1. Download and install [Android file manager](https://www.android.com/filetransfer/)
1. [Download](https://github.com/kobotoolbox/android-deploy/archive/master.zip) the recovery scripts and unzip the folder. Copy it to a safe location (e.g. Desktop).
1. Copy the Android recovery backup inside the `backup` folder. (You will need an existing [TWRP backup](https://www.google.com/search?q=create+backup+in+TWRP) from the same device (or same model) if you haven't already created or received it from someone else). 
1. [Download](https://developer.android.com/studio/releases/platform-tools.html) the SDK Platform Tools for Mac. 
1. Unzip the downloaded folder. 
1. Move the two files 'adb' and 'fastboot' into a folder called 'tools' inside the home directory. (To open the home directory in Finder go to Go > Home.)
1. Open Terminal (Applications > Utilities) and paste the following command, then press Enter: `echo 'export PATH=$PATH:~/tools' >> ~/.bash_profile`
1. Close the terminal (Cmd+Q) and open it up again. Type in `adb`. If you get a long list of adb commands it is working! 

Instructions (Specific to Mac OSX + Nexus 7 tablets) 
----------------------------------------------------
Preparation: 
* Open Terminal. Change into the android-deploy-master folder (e.g. `cd desktop/android-deploy-master`). 
* Open the `android-deploy-master` folder in Finder and position it next to the Terminal on your screen.

1. Connect tablet with USB cable. Start tablet in bootloader mode (press power and volume-down)
1. Drag `0_unlock.sh` into Terminal and press Enter
1. On tablet, confirm 'Yes - Unlock bootloader...' by pressing the power key. Tablet will reboot. Wait. 
1. After tablet has started up, use Android File Transfer app to copy the 'backup' folder to the tablet (drag and drop the folder to the root of the device). Copying will take about 30 seconds.
1. After copying is done, power down the tablet. Restart it into **bootloader mode** (see step 1)
1. Drag `1_recovery-mac.sh` into Terminal, press Enter
1. Once tablet has restarted, drag `2_open_recovery.sh` into the Terminal and hit enter.
1. Once Recovery screen has opened, drag `3_restore.sh` into the Termainal and hit enter.
1. Tablet will restore image. You can unplug the USB cable during that process and move on to the next tablet. 
1. Once restore process is completed (about 2 minutes), press Reboot > System. 
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
