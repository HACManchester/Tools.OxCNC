# Connecting to the CNC

## Overview

The CNC is reachable via a Rpi over the network which acts as a serial proxy

If using Windows 10 then I'd recommend using a separate desktop window, and using a browser other than your main one
(such as Firefox or chrome) so that you can continue to do other things (such as browser the web) with your
main browser etc. without interfering with the milling process.

Try to avoid using the Microsoft Edge Browser as an alternate browser, it seems to be okay sending commands to the mill, but I've noticed the
controls become locked up / unresponsive during the process of sending G-Code / doing the actual mill.


## Powering Up

First we need to power up the mill

TODO insert image
<a href="../../images/Milling/Connecting/Main_Power.jpg"><img src="../../images/Milling/Connecting/Main_Power.jpg" height="50%" width="50%" ></a> <br>

  * The green button is for on, the red button is for off
  * The red EStop button is the same as the red push button for off
  * The power these buttons control goes to the stepper drivers and the spindle motor

The grbl board and the rpi board are powered separately and are powered on all the time regardless. <br>
Because of this reason it's important to perform a homing operation when turning the power on


## Switching on the Spindle

In order to get the spindle to operate, there's a small adjustable pot on the back of the machine to adjust the speed of the spindle. <br>
In one direction it's off, the other it's full speed on.

TODO insert image
<a href="../../images/Milling/Connecting/Spindle_Power.jpg"><img src="../../images/Milling/Connecting/Spindle_Power.jpg" height="50%" width="50%" ></a> <br>

The spindle will only operate if the main power switch is switched on (which also powers the steppers)


## Starting Chillipepr

Next we're going to start up Chillipepr.

Chillipepr is a online system consisting of a series of web pages and JavaScript scripts pulled in from other sites. <br>
There has been an attempt to create an offline version, but for now it's easier just to browse the online version. <br>
The JavaScript within Chillipepr will connect to a Serial Port Json Server located on the Rpi.

  * Open up a browser window
  * Browse to <http://chilipeppr.com/jpadie>

Note the link is different than normal chillipepr / grbl as we're using firmware version 1.1 instead of 0.9 <br>


## Connecting Chillipepr to the CNC

TODO


Next we should be ready to now link / connect Chillipepr to the serial server. <br>
Select **Connect to Host**

<a href="../../images/Milling/Connecting/Connect1.png"><img src="../../images/Milling/Connecting/Connect1.png" height="50%" width="50%" ></a> <br>

Select **Connect to Localhost**

<a href="../../images/Milling/Connecting/Connect2.png"><img src="../../images/Milling/Connecting/Connect2.png" height="50%" width="50%" ></a> <br>

We should now see a list of the devices detected in the bottom right corner.

In the drop down lists make sure **Grbl** is selected, and the maximum baud rate **115,200** <br>
The older versions of Grbl used to use a slower baud rate of around 9600, but the later versions use the max 115,200 speed instead.

Once you've selected Grbl in the drop down, click the tick box on the left to initiate the connection to the board.

<a href="../../images/Milling/Connecting/Connect3.png"><img src="../../images/Milling/Connecting/Connect3.png" height="50%" width="50%" ></a> <br>


## Homing

One of the first steps to do after powering up the mill is to home the device.
Because the grbl board is on all the time but the stepper motors might not be, this means grbl can lose track of where it is up to after a power on cycle.

Click the Homing button on the Chillipepr interface to trigger a homing cycle of the CNC mill. <br>
This will cause the mill to move upwards and to the bottom left hand corner of the machine.

TODO insert image

Without homing there's the risk the machine may go too far downwards
as this is limited by software limits which rely on grbl knowing where the home position is.


## Connecting via Http

If you want to instead connect to the CNC via a Serial Console, it's possible to access the serial port via the browser

  * First browse to the following link in a web browser <br>
    <http://172.16.0.8:8989>

To send a command like $$ which lists the grbl settings we can use the following within the web client
```
send /dev/ttyACM0 $$
```

  * To send G-Code:
    <http://www.shapeoko.com/wiki/index.php/G-Code>
