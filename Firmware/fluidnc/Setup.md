# Setup

This is general setup info for setting up FluidNC
The configuration of the device can be split into to parts

  * Settings stored outside of config.yaml
    https://github.com/bdring/FluidNC/wiki/FluidNC-Commands-and-Settings
  * Settings stored inside config.yaml
    https://github.com/bdring/FluidNC/wiki/FluidNC-Config-File-Overview

Typically anything network related is stored outside of the config.yaml file
With config.yaml containing configuration for the device in terms of which pins to use / end stops / machine limits etc


## Networking / WIFI Setup

The Wifi settings can be set outside of config.yaml on the command line / serial port console.

```
#To list all wifi access points
$Wifi/ListAPs

# To List the exiting settings
$Settings/List

# To setup for the Hackspace wifi
$Hostname=HackSpaceOxCnc
$Sta/SSID=Hackspace
$Sta/Password=Password_Here

# To reboot after changing settings
$Bye
```


## Status Messages

```
# Show the messages that were shown on startup
# This can be useful to see which IP was used
$Startup/Show

# Show the local files on the ESP32 (not on the SD Card)
# Typically this shows the default web interface file and the configuration file
$LocalFS/List
```

## TODO

  * Spindle speed
  * check travel resolution
  * check homing direction
  * check soft limits / hard limits
