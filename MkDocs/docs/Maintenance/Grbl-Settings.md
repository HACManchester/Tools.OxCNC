# Grbl Settings

## Connecting to grbl

Since the grbl board is placed behind a Rpi running the serial proxy.<br>
First we need to browse to the following link in our browser

  * <http://172.16.0.8:8989>


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

As of writing the current firmware version is: 0.9j.20150811


### Soft End Stops

For the most part we don't really need software stops apart from one place which is when the spindle travels downwards. <br>
I've enabled them, and added 1mm onto each setting which seems to get them to work right

From the home position the max 

  * for z = 67mm from home (68mm from the top of where the end stop is)
  * for x = 562mm (switch triggers after 564)
  * for y = 745mm (switch triggers after 748)


This equals
```
$20=1
$130=563.000 - XMax travel
$131=746.000 - YMax travel
$132=68.000 - ZMax travel
```

### Current Settings
```
$0=10 (step pulse, usec)
$1=25 (step idle delay, msec)
$2=0 (step port invert mask:00000000)
$3=0 (dir port invert mask:00000000)
$4=0 (step enable invert, bool)
$5=0 (limit pins invert, bool)
$6=0 (probe pin invert, bool)
$10=3 (status report mask:00000011)
$11=0.010 (junction deviation, mm)
$12=0.002 (arc tolerance, mm)
$13=0 (report inches, bool)
$20=1 (soft limits, bool)
$21=1 (hard limits, bool)
$22=1 (homing cycle, bool)
$23=3 (homing dir invert mask:00000011)
$24=50.000 (homing feed, mm/min)
$25=2000.000 (homing seek, mm/min)
$26=250 (homing debounce, msec)
$27=1.000 (homing pull-off, mm)
$100=53.333 (x, step/mm)
$101=53.333 (y, step/mm)
$102=400.000 (z, step/mm)
$110=6000.000 (x max rate, mm/min)
$111=3000.000 (y max rate, mm/min)
$112=200.000 (z max rate, mm/min)
$120=50.000 (x accel, mm/sec^2)
$121=50.000 (y accel, mm/sec^2)
$122=10.000 (z accel, mm/sec^2)
$130=563.000 (x max travel, mm)
$131=746.000 (y max travel, mm)
$132=68.000 (z max travel, mm)
```

### Original Settings (when the machine first arrived from Ian)

```
$0=10 (step pulse, usec)
$1=25 (step idle delay, msec)
$2=0 (step port invert mask:00000000)
$3=0 (dir port invert mask:00000000)
$4=0 (step enable invert, bool)
$5=0 (limit pins invert, bool)
$6=0 (probe pin invert, bool)
$10=3 (status report mask:00000011)
$11=0.010 (junction deviation, mm)
$12=0.002 (arc tolerance, mm)
$13=0 (report inches, bool)
$20=0 (soft limits, bool)
$21=1 (hard limits, bool)
$22=1 (homing cycle, bool)
$23=3 (homing dir invert mask:00000011)
$24=50.000 (homing feed, mm/min)
$25=2000.000 (homing seek, mm/min)
$26=250 (homing debounce, msec)
$27=1.000 (homing pull-off, mm)
$100=53.333 (x, step/mm)
$101=53.333 (y, step/mm)
$102=400.000 (z, step/mm)
$110=6000.000 (x max rate, mm/min)
$111=3000.000 (y max rate, mm/min)
$112=200.000 (z max rate, mm/min)
$120=50.000 (x accel, mm/sec^2)
$121=50.000 (y accel, mm/sec^2)
$122=10.000 (z accel, mm/sec^2)
$130=555.000 (x max travel, mm)
$131=740.000 (y max travel, mm)
$132=60.000 (z max travel, mm)
```
