# Todo

## Milling bits

  * Ideally we could do with some 6mm milling bits for clearing large areas <br>
    <https://www.amazon.co.uk/gp/product/B00XTWOT9O>
  * look into how many 3mm milling bits we have as they are considered a consumable.

## Mounting Holes

  * Add some screw in mounting holes to the spoiler table

## Stepper Drivers

  * At the moment the stepper drivers are around 1A, but the motors are around 2.8A <br>
    So we're probably only getting limited torque / power from the motors. <br>
    A future idea would be to upgrade the electronics with some TMC stepper drivers.

## Rpi

  * We need to upgrade the Rpi1 to a Rpi3 <br>
    The serial buffer is maxing out the CPU, and it would be useful to have a remote desktop session available.

# Remote machine

  * We need to setup the Rpi3 with remote desktop, and have a seperate machine that can be used for control from a monitor etc.

## 4th Axis

  * One interesting thing we could do is 3d print a 4th axis for the cnc.

## Dust Brush

We need to 3d Print a head to go over the top of the milling bit and allow the attachment of

  * A ring of LED's
  * The hose for the vacume extractor.

## Touch Plate

Look into setting up a touch plate for mill bits, and a downward inductive sensor for PCB milling

## Electronics

It may be best to reset the grbl board on power down / estop
that way a home will be forced before the machine can start receiving G-Code again

## PMW Spindle Control

According to Ian the spindle speed may already be wired up to the control board.
But the reason for using the variable pot instead was because it was difficult to get the pre-processor to generate the G-Code to switch it on
Ian got tired of watching the head crash into the material with turning on

We may need to uncomment the below in the source

// #define MINIMUM_SPINDLE_PWM 5 // Default disabled. Uncomment to enable. Integer (0-255)

