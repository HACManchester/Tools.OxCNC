# Settings V1 - V1.1

## Overview

New settings for use with grbl 1.1f

```
$0=10 (step pulse, usec)
$1=25 (step idle delay, msec)
$2=0 (step port invert mask:00000000)
$3=0 (dir port invert mask:00000000)
$4=0 (step enable invert, bool)
$5=0 (limit pins invert, bool)
$6=0 (probe pin invert, bool)
$10=1 (status report mask:00000001)
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
$30=1000
$31=0
$32=0
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
