# Updating the Firmware

## Overview

This is a list of steps to follow when updating the Grbl firmware


## Backup Settings

The first thing we need to do is backup the settings from the Grbl firmware / Arduino

  * Hook up the arduino board directly to a laptop using the USB cable that runs into the Rpi
  * Open putty and connect to the Grbl / Arduino Uno
  * <http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html>

  * Type $$ followed by a carriage return
  * Copy and paste the output into a text file


## Download Files

Next we need to grab the latest firmware version

  * <https://github.com/gnea/grbl>
  * Version 1.1f (2017-08-01) seems to be the latest at the time of writing

Next download XLoader

  * <http://russemotto.com/xloader/>

## Flash Firmware

Next to flash the new Hex file to the Arduino

  * Reset the Controller board
  * Open XLoader
  * Select the correct **COM Port**
  * Make sure **Arduino UNO** is selected for the device
  * Browse to the new hex file
  * Click Upload
  * Wait for the upload to complete

## Restore custom settings

As a final step we need to restore any custom settings that were originally applied

  * Connect via putty (with the latest firmware this is now at a speed of 115200)
  * Use $$ to list all settings
  * Add in any differences needed to the settings

