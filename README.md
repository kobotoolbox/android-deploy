android-deploy
==============

A script to simplify the setup of multiple brand new Android devices based on a single configuration. At its core it relies on a [full system backup created in advance](https://www.google.com/search?q=create+backup+in+TWRP) by an experienced user through TWRP (Team Win Recovery Project). It is meant to be run by non-technical users and doesn't require any configuration on the actual device. User does not need to follow any instructions other than booting up device into bootloader mode. 

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
* Android adb and fastboot installed and added to environment path (download and path instructions [here](http://lifehacker.com/the-easiest-way-to-install-androids-adb-and-fastboot-to-1586992378)
* existing TWRP backup from the same device (or same model) in a sub folder 'backup' 
* [TWRP 2.8.0.1](http://teamw.in/project/twrp2) in the same directory as the batch file

How to run it
-------------
* Download .bat file
* Double-click file to start the process for each device being set up
* Follow instructions on the screen
