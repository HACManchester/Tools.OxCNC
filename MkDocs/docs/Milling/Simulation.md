# Simulation

## Overview

Usually the best simulation is done within the CAM Software such as HSMExpress.
It's also possible to simulate outside of cam via a couple of methods to see how the milling head will follow the path while milling


## Chillipepr

Chillipepr has its own simulator that can be used to get a preview of the G-Code path within the browser window.

Something to be aware of is that Chillipepr has problems with curves in the simulator, it seems to just follow a diagonal line across the arc.
When it comes to actual milling though this isn't a problem as the firmware of the CNC will perform the arc correctly and send feedback to Chillipepr as to its current location.

<a href="../../images/Milling/Simulation/Chillipepr-Sim1.png"><img src="../../images/Milling/Simulation/Chillipepr-Sim1.png" height="50%" width="50%" ></a> <br>



## Camotics

One app you can download and use to simulate the G-Code is Camotics.
This can be used to give you a simulation of what the part will look like once milled.

  * <http://camotics.org/>

<a href="../../images/Milling/Simulation/camotics1.png"><img src="../../images/Milling/Simulation/camotics1.png" height="50%" width="50%" ></a> <br>

