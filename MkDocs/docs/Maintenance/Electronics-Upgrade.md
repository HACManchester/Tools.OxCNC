# Electronic Upgrade

I've listed some plans to upgrade the electronics on the CNC within the hackspace
Currently we're using grbl on a 16bit arduino with small Alegro drivers which isn't ideal


## Controller

For the controller board the plan I've got at the moment
is to instead use a arduino due (32bit) with a breakout board

for the breakout board I'm currently using one of these at home

  * http://ooznest.co.uk/3D-Printer-Electronic-Parts/RADDS-3D-Printer-Controller-Board

But what I think I'll try and do instead of buying one is make a custom board
that as green plugs for the stepper drivers, as that is designed more for pololu
and I already have the kicad schematic for it as well.


## Stepper drivers

For the stepper drivers there's currently two options I'm looking into


### DM542 / DQ542MA

This is one option, it's easier to use as it's a pre-made module
DM542 / DQ542MA seem to be a popular choice on the cnc forums I think
I think they have DSP's in so are a bit quieter

  * http://openbuildspartstore.com/dq542ma-stepper-motor-driver/ £30 x 4
  * https://www.amazon.co.uk/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=dm542
  * https://www.youtube.com/watch?v=8sHsa4FZ2Cc
  * https://www.amazon.co.uk/Kehuashina-Leadshine-DM542-05-DM54205-Stepper/dp/B07BBCWH7X/ref=sr_1_2?ie=UTF8&qid=1528157669&sr=8-2&keywords=dm542


### TMC5160

This is the one I'd like to use, possibly sitting on top of another board with a bit of opto isolation

  * https://www.digikey.co.uk/product-detail/en/trinamic-motion-control-gmbh/TMC5160-BOB/1460-1250-ND/8440397

trinamic drivers have some features built in we could use later on such as measuring the amount of torque against the bit
or stealthchop etc, but to start with we could just run them as normal in step / dir mode
however those fet's are only rated for 2.8A so I've asked trinamic if they think the Bob board would be suitable
Also an additional heatsink may be needed.

### Other suggestions

  * https://www.buildyourcnc.com/item/electronicsAndMotors-stepper-driver-3!0a
  * https://www.youtube.com/watch?v=woyp03D0neY



## CNC Cable / Connectors

We'll need to move the electronics to it's own seperate box under the bench

  * stepper driver cable - ?? not sure how many meters to use yet
    https://www.cnc4you.co.uk/Electrical/Cables-Connectors/4-Core-Screened-Cable-0.75mm-12Amp
  * Connectors - todo check which connectors to use, I think those 4 pin areospace ones


## Box

I'm not sure if the box I've got so far will be big enough for everything
could do with finding something a bit bigger in the space



## TODO


### Endstops

The current end stop board uses relays, I might try and replace that with an opto-coupler board


### Machine kit

later on we may want to look into using a beaglebone board with a cape of some description with machinekit
however I need to spend some time testing / figuring that out so for now we'll stick to g2core since I've already got that working before
also we need it to work with chillipepr.

  * https://jetforme.org/2018/04/machinekit-on-bbb/

Some example cape's used with machinekit (cramps / optocape):

  * http://blog.machinekit.io/p/hardware-capes.html#Xylotex
  * https://www.tindie.com/products/TEMProducts/optocape/
  * https://github.com/dgouramanis/optocape
