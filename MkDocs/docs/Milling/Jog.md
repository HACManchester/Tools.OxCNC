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

**Note** be careful to make sure the machine is homed after enabling the power to the machine. <br>
This should avoid the machine moving too far / crashing into itself.


## Homing the machine

One of the first steps we need to do is to home the machine.

<a href="../../images/Milling/Jog/Jog5.png"><img src="../../images/Milling/Jog/Jog5.png" height="50%" width="50%" ></a> <br>

This will trigger the machine to move to the lower left upwards corner. <br>
There are limit switches for left to right and for front to back. <br>
There's also a limit switch for the head moving upwards but not downwards.

Software limits have also been enabled which prevents the machine from traveling too far downwards,
but this relies on the homing of the machine being correct. <br>
If the machine hasn't been homed then this may result in the machine stopping before it should when traveling.


## Zeroing the machine

CNC's tend to have a concept of a zero point. <br>
The best way to imagine this is the starting point from which the G-Code will start to run.

The zero point is the reference to which all other move operations occur. <br>
This zero point can be anywhere

  * Usually you set the zero point to the bottom left corner of where you will be milling from.
  * Also it's best to set the Z Axis (height of the mill bit above the material) so that it's just touching the top of the material that's going to be milled.
  * One trick to getting the Z Height right is to turn the spindle on, and to jog the machine down slightly until you start to hear it grind against the wood.
  * This assumes you have set the origin in the Cam software to the **bottom left** corner at the **top** of the material

Once the head is in the right place you can then use the **Zero Out** button to tell the grbl firmware that this is the new starting point.

<a href="../../images/Milling/Jog/Jog4.png"><img src="../../images/Milling/Jog/Jog4.png" ></a> <br>

The *Go To Zero* button should be used carefully, this will cause the cnc head to move back to the zero point if it's currently in some other location.
If the zero point isn't set right then you might cause the head to crash into the milling material.

Note with Grbl and Chillipepr only G92 based Axis is supported which is a temporary axis which tends to be reset between power cycles. <br>
Grbl actually has support for G53 / G54 G-Codes for more permentant relative axis, but this can't be set within Chillipepr.
