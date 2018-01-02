# JSCut

## Overview

One of the more simpler ways to create G-Code for the CNC is to use JSCut. <br>
JSCut is a 2.5D milling software, which means it takes vector shapes (like the laser cutter) and can cut them at different depths.

  * http://jscut.org/jscut.html#

This is one of the simpler bits of software to use so it's a good place to start. <br>
It's also online so it's run within the browser


## Generating G-Code

### Import Settings

TODO

### Load in SVG File

TODO

### Change Settings

TODO

### Create Operations

TODO

### Set Zero Point

TODO

### Save G-Code

TODO





## Notes


## Inkscape Notes

JSCut in some cases (such as circles) may need an object to be converted to a path. <br>
This can be done within inkscape via **Path -> Object to Path**

### Milling Notes

TODO

make sure to position the head about 3mm down on the z axis first then zero the machine
the G-Code will raise the head by 2.5mm between movements from area to area so this is important
otherwise the Z axis will try to go too high and trip the alarm / end stop


### Solidworks Notes

TODO

1. First export solidworks face of part to dxf
2. then load dxf into inksscape
3. then use inkscape's object to path command
