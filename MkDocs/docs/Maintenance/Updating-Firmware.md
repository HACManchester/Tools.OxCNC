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

## Backup Firmware

If you want to backup the existing firmware:

Under windows (check the com port number)
```
cd C:\Program Files (x86)\Arduino\hardware\tools\avr\bin
avrdude -C "C:\Program Files (x86)\Arduino\hardware\tools\avr\etc\avrdude.conf" -p m328p -P com4 -c arduino -b 115200 -F -U flash:r:C:\Apps\flash.hex:i
avrdude -C "C:\Program Files (x86)\Arduino\hardware\tools\avr\etc\avrdude.conf" -p m328p -P com4 -c arduino -b 115200 -F -U eeprom:r:C:\Apps\eeprom.hex:i
avrdude -C "C:\Program Files (x86)\Arduino\hardware\tools\avr\etc\avrdude.conf" -p m328p -P com4 -c arduino -b 115200 -F -U efuse:r:C:\Apps\efuse.hex:i
avrdude -C "C:\Program Files (x86)\Arduino\hardware\tools\avr\etc\avrdude.conf" -p m328p -P com4 -c arduino -b 115200 -F -U lfuse:r:C:\Apps\lfuse.hex:i
avrdude -C "C:\Program Files (x86)\Arduino\hardware\tools\avr\etc\avrdude.conf" -p m328p -P com4 -c arduino -b 115200 -F -U hfuse:r:C:\Apps\hfuse.hex:i
```






Under Linux it will be something like
```
cd C:\Program Files (x86)\Arduino\hardware\tools\avr\bin
avrdude -p m328p -P /dev/tty.usbserial- -c arduino -b 38400 -F -U flash:r:backup1.hex:i
```

TODO check arduino chip type is m328p


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

