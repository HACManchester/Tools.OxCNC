# LAMM Ox CNC Build Docs

## Parts

### Off the shelf parts

* Ox CNC 750 x 1000 kit from Ooznest - http://ooznest.co.uk/3D-Printer-CNC-Kits-Bundles/OX-CNC-Machine
* 400W Brushless Spindle Motor ER11 & Mach3 PWM speed controller + PSU - http://www.ebay.co.uk/itm/141684438281
* GRBL compatible Arduino shield v3.00 - http://blog.protoneer.co.nz/arduino-cnc-shield/
* 2 x 1M Plastic Open Type Towline Cable Carrier Drag Chain 15mm x 20mm - http://www.amazon.co.uk/gp/product/B00AUB2584
* M5 drop in t-nuts for misc bolting of stuff on - http://ooznest.co.uk/Drop-In-Tee-Nuts
* M5 t nuts for misc stuffs - http://www.amazon.co.uk/gp/product/B00WW50JAM

### 3d Printed Parts

* NEMA23 stepper backs - https://www.thingiverse.com/thing:1002246
* Cable Chain - X Axis - Bottom Bracket - http://a360.co/1P55SAS
* Cable Chain - X Axis - Top Bracket - http://a360.co/224AYQb

## Wiring details

### Stepper motors

The Ox CNC kit includes OpenBuilds NEMA23 stepper motors - http://openbuildspartstore.com/nema-23-stepper-motor/

Parts:

* Sockets - Circular Connector, Plug, 4, Pin, Solder, Panel Mount - http://cpc.farnell.com/pro-signal/psg01593/plug-multipole-panel-4p/dp/AV15051
* Plugs - Circular Connector, Receptacle, 4, Socket, Solder, Cable Mount - http://cpc.farnell.com/pro-signal/psg01590/socket-multipole-4p/dp/AV15048
*  Cable - Multicore Unscreened Cable, 4 Core, 0.5 mm², 16 x 0.2mm, 82.021 ft, 25 m - http://uk.farnell.com/pro-power/pp000336/multicore-4-cond-0-5mm2-25m-440v/dp/2440120

Don't buy these:

* ~~Cable - Green Multicore Screened Cable, 4, 22 AWG, 0.33 mm², 328 ft, 100 m - http://cpc.farnell.com/concordia-technologies/6011238/external-individually-screened/dp/CB18752~~
* ~~Cable - PRO POWER  7-2-4A  Multicore Unscreened Cable, 4 Core, 0.22 mm², 7 x 0.2mm, 328 ft, 100 m - http://cpc.farnell.com/pro-power/7-2-4a/cable-7-0-20mm-4c-unscreened-100m/dp/CB15174?ost=cb15174~~

Wiring:

| Pin | Colour | Coil   |
|-----|--------|--------|
| 1   | Green  | Coil 1 |
| 2   | Red    | Coil 1 |
| 3   | Yellow | Coil 2 |
| 4   | Blue   | Coil 2 |

### Spindle

The ebay purchased spindle is mentioned at the top of the build docs.

* Spindle labelled as "HXKJ DMW57314 DC48v 400w 12000RPM"
* Controller - BLDC Motor Driver "HX-WS400"
* Power supply - "JC-500-48" 48v 10A PSU

Wiring:

| Pin     | Colour        |
|---------|---------------|
| Hall-   | Black (small) |
| HC      | White (small) |
| HB      | Green (small) |
| HA      | Blue (small)  |
| Hall+   | Red (small)   |
| Motor W | Black (large) |
| Motor V | White (large) |
| Motor U | Red (large)   |

Connecting the GRBL controller to the speed controller:

What colours did I use?!

### Limit switches

* Proximity switches - http://www.dx.com/p/lj12a3-4-z-bx-inductive-proximity-switch-black-silver-dc-6-36v-100cm-cable-228309#.V4ySRR9vEeM
* 4 channel 24v relay board - http://www.ebay.co.uk/itm/24V-4-Channel-Relay-Module-With-OPTO-Isolated-High-and-Low-Level-Trigger-/301460254292?

## Software

### Firmware tweaks

Changes to the GRBL config.h:

* Comment out HOMING_INIT_LOCK which prevents homing
* Change SPINDLE_MAX_RPM to 12000
* Change SPINDLE_MIN_RPM to 6000

// #define MINIMUM_SPINDLE_PWM 5 // Default disabled. Uncomment to enable. Integer (0-255)

### Testing

Spindle testing using G codes:

* https://en.wikipedia.org/wiki/G-code#List_of_M-codes_commonly_found_on_FANUC_and_similarly_designed_controls

So:

* M03 - Spindle on (clockwise)
* M04 - Spindle on (anti-clockwise)
* M05 - Spindle off
* S1000 - Speed 1000

### Notes

Bed area limits:

  x = 561
  y = 740
  z =  60

