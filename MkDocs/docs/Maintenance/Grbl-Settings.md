# Grbl Settings

## Connecting to grbl

Since the grbl board is placed behind a Rpi running the serial proxy.<br>
First we need to browse to the following link in our browser

  * <http://172.16.0.8:8989>

Currently firmware and settings are stored within

  * <https://github.com/HACManchester/Tools.OxCNC/Firmware/>


## Settings


### Reading Settings

To read the grbl settings we need to send $$ to grbl over the serial port

To do this via the serial proxy we can type in the following into the web client
```
send /dev/ttyACM0 $$
```


### Reading Firmware version

To read the current firmware version
```
send /dev/ttyACM0 $I
```

As of writing the current firmware version is: 1.1f


### Soft End Stops

For the most part we don't really need software stops apart from one place which is when the spindle travels downwards. <br>
I've enabled them, and added 1mm onto each setting which seems to get them to work right

From the home position the max 

  * For Z = 67mm from home (68mm from the top of where the end stop is)
  * For X = 562mm (switch triggers after 564)
  * For Y = 745mm (switch triggers after 748)


This equals
```
$20=1
$130=563.000 - XMax travel
$131=746.000 - YMax travel
$132=68.000 - ZMax travel
```
