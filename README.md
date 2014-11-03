android-deploy
==============

A script to simplify the setup of multiple brand new Android devices based on a single configuration. At its core it relies on a full system backup created in advance by an experienced user through TWRP (Team Win Recovery Project). 

This script is meant to be run by non-technical users and doesn't require any configuration on the actual device. User does not need to follow any instructions other than booting up device into bootloader mode. 

Instructions regarding buttons to be pressed are specific to Nexus 7 devices, but the script should be universal for all Android devices. The script is currently only working on Windows. 

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
The preparation work for creating the backup and setting up the computer to be used for deploying the image may require someone with some technical experience. All these files could also be packaged into a single zip file that is then unpacked by the non-technical user.
* Android adb and fastboot installed and added to environment path (download and path instructions [here](http://lifehacker.com/the-easiest-way-to-install-androids-adb-and-fastboot-to-1586992378)
* existing [TWRP backup](https://www.google.com/search?q=create+backup+in+TWRP) from the same device (or same model) located in a sub folder 'backup' 
* [TWRP 2.8.0.1](http://teamw.in/project/twrp2) in the same directory as the batch file
* On Windows: Android [USB drivers](http://developer.android.com/sdk/win-usb.html) for fastboot and recovery. IMPORTANT: This [might require manual manual updating of driver file](http://blog.dantup.com/2012/10/fixing-adb-device-not-found-with-nexus-7-in-recovery-mode/) if your device is not recognized in Recovery mode.

How to run it
-------------
* Download .bat file
* Double-click file to start the process for each device being set up
* Follow instructions on the screen
