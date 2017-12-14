# Milling Material

## Clamping Holes

The CNC has a spoiler board located on its base. Generally, you try to avoid milling into the spoiler but it can be replaced. <br>
The current method for securing material is to just use a glue gun to stick it down then peel it off afterwards.

Later on we may have some mounting holes for clamps, although those haven't been added in just yet.


## MDF

So far I've used MDF 12mm thick cut into sections using the table saw. <br>
However, it's advisable to limit the depth of a pass to about 2mm or so at one time, to avoid overloading the stepper motors on the device (milling too much out at one time)


## Metal

The Ox CNC has Nema23 motor's but I think we're only driving them at about 50% of the power <br>
due to the stepper drivers in use. Generally with metals you have to follow speeds and feeds. <br>
This is where the speed of the spindle has to match the feedrate through the material.

  * <http://www.cnccookbook.com/GWCalcFeedsSpeeds.htm>

I'd recommend trying two flute bits with aluminum. <br>
I've also got a rough speeds / feeds calculator here in the form of a spreadsheet:

  * <https://github.com/HACManchester/Tools.OxCNC/tree/master/MkDocs/docs/images/Milling/Material>
