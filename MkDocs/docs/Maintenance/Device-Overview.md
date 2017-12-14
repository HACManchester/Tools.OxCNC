# Device Overview

We currently have a ooznest Ox CNC.

  * The main controller board is a Arduino Uno running Grbl 1.1
  * There is also a CNC Shield, I think one of these - <https://blog.protoneer.co.nz/arduino-cnc-shield/>
  * The stepper motors are Nema23's, I think 2.8A max based on the ooznest site
  * I think the stepper drivers are Pololu - Allegro A4988, which are probably limited to around 1A max without cooling

<a href="../../images/Maintenance/Device-Overview/StepperDrivers.jpg"><img src="../../images/Maintenance/Device-Overview/StepperDrivers.jpg" height="20%" width="20%" ></a>
<a href="../../images/Maintenance/Device-Overview/MainElectronics.jpg"><img src="../../images/Maintenance/Device-Overview/MainElectronics.jpg" height="20%" width="20%" ></a> <br>

Maximum travel

  * X Axis: 563mm (left to right)
  * Y Axis: 746mm (front to back)
  * Z Axis: 68mm (up to down)

## Firmware Overview

Currently the Ox CNC uses an Arduino Uno with Grbl 1.1

  * <https://github.com/grbl/grbl>
  * <https://github.com/grbl/grbl/wiki/Configuring-Grbl-v0.8#grbls-xval-settings-and-what-they-mean>
  * The original version of the firmware was 0.9<br>
  * This has now been updated to version 1.1 which uses a baud of **115200**


## Power Supplies

There are 2 PSU's in use

  * The first powers the spindle via a black box BLDC driver
  * The second powers the stepper drivers / cnc shield


## Spindle

The spindle is a 400W one controlled via a potentiometer, driven by a BLDC driver.
The plan is to switch this across to pmw at some point.

<a href="../../images/Maintenance/Device-Overview/SpindleDriver.jpg"><img src="../../images/Maintenance/Device-Overview/SpindleDriver.jpg" height="30%" width="30%" ></a> <br>

## Rpi

There is a RpiV1 acting as a serial proxy so that we can connect to the OxCNC over the network to it's serial port.

<a href="../../images/Maintenance/Device-Overview/RpiBoard.jpg"><img src="../../images/Maintenance/Device-Overview/RpiBoard.jpg" height="30%" width="30%" ></a> <br>

## End Stops

There are inductive end stops for every direction except for travelling downwards. <br>
The downward limit is handled via a software limit which is based on the homing position.


## Tool Heads

For the collets we have ER11 collets located in a box next to the CNC.
ideally we could do with milling out a wooden plate for holding them, on a pull out shelf etc.

The milling bits are generally 3mm or 6mm. <br>
We also have other smaller bits for pcb milling etc.
