# Jogging the CNC

## Overview

One of the first things to learn how to do is to jog the device using the controls at the upper right hand corner. <br>
You may need to use the arrow button to expand the tab out to see all the controls.

<a href="../../images/Milling/Jog/Jog1.png"><img src="../../images/Milling/Jog/Jog1.png" height="50%" width="50%" ></a> <br>


## Moving in Increments

It's possible to move the head of the mill in small increments by using the following buttons.

<a href="../../images/Milling/Jog/Jog2.png"><img src="../../images/Milling/Jog/Jog2.png" height="50%" width="50%" ></a> <br>

By default, the amount to move should be in mm, it's possible to set larger or smaller values to move using the buttons underneath.
To use a value larger than 1 just use the custom drop down.

<a href="../../images/Milling/Jog/Jog3.png"><img src="../../images/Milling/Jog/Jog3.png" height="50%" width="50%" ></a> <br>

**Note** be careful not to crash the head onto the spoiler plate or side of the machine when moving around.


## Zeroing the machine

### Zero point

CNC's tend to have a concept of a zero point. The zero point is the reference to which all other move operations occur.
This zero point can be anywhere

  * Usually you set the zero point to the bottom left corner of where you will be milling from.
  * Also it's best to set the Z Axis (height of the mill bit above the material) so that it's just touching the top of the material that's going to be milled.
  * One trick to getting the Z Height right is to turn the spindle on, and to jog the machine down slightly until you start to hear it grind against the wood.
  * This assumes you have set the origin in the Cam software to the bottom left corner at the top of the material

Once the head is in the right place you can then use the **Zero Out** button to tell the grbl firmware that this is the new starting point.

<a href="../../images/Milling/Jog/Jog4.png"><img src="../../images/Milling/Jog/Jog4.png" ></a> <br>

The *Go To Zero* button should be used carefully, this will cause the cnc head to move back to the zero point if it's currently in some other location.
If the zero point isn't set right then you might cause the head to crash into the milling material.


### Homing the machine

We currently don't have any homing switches on the Shapeoko at the moment.
One way around this is to power down the steppers, then manually move the head to the bottom left hand corner.

Grbl doesn't have a way of forcing the steppers on / off, we currently have the settings within the firmware set to power down the steppers 0.1 seconds after the machine enters into a hold. <br>
This way we have the option of manually moving the mill when it's not running g-code

