# Milling

All of the controls associated with the actual milling are located on the left hand side. <br>
The emergency / immediate stop is also located on the right hand side

<a href="../../images/Milling/Milling/Milling1.png"><img src="../../images/Milling/Milling/Milling1.png" height="30%" width="30%" ></a>
<a href="../../images/Milling/Milling/Milling5.png"><img src="../../images/Milling/Milling/Milling5.png" height="30%" width="30%" ></a> <br>


## Zero the Machine

One of the first steps is to get the head of the machine in the right place.
It all depends on where you've put the origin when using the CAM software, but generally placing the head at the lower left corner of where you will be milling is the best bet.
Also you need to ether jog or manually adjust the Z Height so that the mill bit is just touching the surface of the material to be milled.

One trick to figuring out when the mill bit is just touching the surface, is to turn on the spindle then jog the head down slowly 0.1 mm at a time
untill you hear the noise of the material being grinded.

Another idea before you start milling is to move the head back 5mm (y - 5) <br>
Then mill a hole straight down. If for any reason anything goes wrong you can use this hole to reset the position of the machine
to a known point before restarting.

## Set the Feed Rate Multiplier

Assuming you've already loaded in the G-Code into Chillipepr (drag and drop the file onto the browser window) <br>
The most important setting is the Feed Rate

<a href="../../images/Milling/Milling/Feedrate1.png"><img src="../../images/Milling/Milling/Feedrate1.png" height="50%" width="50%" ></a> <br>

If you've already set the feedrate within the CAM software <br>
(used to create the G-Code) then you can just leave this at **1.00** <br>
This value is a multiplier so **0.5** = half speed.

A speed which is too fast is really bad, as it can lead to:

  * The milling bit becoming too stressed / breaking / bending
  * The machine skipping steps leading to all sorts of problems with mis-alignments

If you've used hsmworks for example and left the feedrate at the default speed, then it will be about 10 x too fast for the mill.
In that case 0.1 is a safe value. <br>

That being said it's generally better to make sure the feedrate is set correctly within the CAM software and to use a 1.0 value here if you can.
The reason being is that the motion will be generally less jerky overall due to grbl not having to compensate.


## Turn on the Spindle

Next switch on the spindle to get ready to start milling

<a href="../../images/Milling/Milling/Spindle_Switch.jpg"><img src="../../images/Milling/Milling/Spindle_Switch.jpg" height="20%" width="20%" ></a> <br>


## Start the G-Code

To start running the G-Code use the play button, make sure the spindle is running before you do this.

<a href="../../images/Milling/Milling/Milling2.png"><img src="../../images/Milling/Milling/Milling2.png" height="50%" width="50%" ></a> <br>


### Using the Vacuum Cleaner

While cutting we can use the henry hoover to suck up the mdf that's milled out to see what has been cut so far.

<a href="../../images/Milling/Milling/Hoover1.jpg"><img src="../../images/Milling/Milling/Hoover1.jpg" height="50%" width="50%" ></a> <br>

### Using a different starting point (Optional)

One of the tricks Chillipepr allows us to do is to start from a line further down in the G-Code.
If you click on one of the lines of the G-Code in the list

  * This gives you an indication of where the CNC will be from an absolute position
  * This allows you to set this as a new starting point when playing the G-Code
  * We can get the head to move to this position / skip the G-Code above

<a href="../../images/Milling/Milling/StartPos1.png"><img src="../../images/Milling/Milling/StartPos1.png" height="50%" width="50%" ></a> <br>


## Stopping Milling

There's a couple of different ways to stop the milling

### Disconnect the USB Lead

If you're really in a rush because something has horribly gone wrong, just disconnecting the USB lead is one sure way to stop everything.

### Stopping the Queue

The controls on the left do have a stop button.
However, this only stops further messages being queued into the grbl firmware.
If you use this the CNC will probably still continue on for a while longer while it gets to the end of its buffer stream

<a href="../../images/Milling/Milling/Milling3.png"><img src="../../images/Milling/Milling/Milling3.png" height="50%" width="50%" ></a> <br>

### Immediate Stop

If you want to try and stop the machine immediately within Chillipepr then there's a 2nd stop button on the right hand side.
These buttons send special commands to grbl to stop the G-Code right away (without waiting for the buffer to flush / complete).
There's also a resume button next to it as well

<a href="../../images/Milling/Milling/Milling4.png"><img src="../../images/Milling/Milling/Milling4.png" height="50%" width="50%" ></a> <br>

