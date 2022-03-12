# Wiring

## PSU

Power Supply is 24V DC


## Stepper Drivers

The main drivers are DM556

  * https://uk.banggood.com/5_6A-DC-24-50V-57-or-86-2-Phase-Stepping-Driver-DM556-Stepper-Motor-Driver-Board-p-1374317.html?utm_source=googleshopping&utm_medium=cpc_organic&gmcCountry=GB&utm_content=minha&utm_campaign=minha-gbg-en-pc&currency=GBP&cur_warehouse=UK&createTmp=1&utm_source=googleshopping&utm_medium=cpc_bgcs&utm_content=tanya&utm_campaign=tanya-pla-gbg-all-11sale-21-1021&ad_id=554630521428&gclid=EAIaIQobChMIopeG2ZDB9gIVBe_tCh1ewQRgEAQYAyABEgIpx_D_BwE






## SD Card

  1. N/c
  2. CS 10th pin down right, gpio5
  3. Mosi 2nd pin down right, gpio23
  4. Gnd
  5. Vdd
  6. Sck 9th pin down right, gpio18
  7. Gnd
  8. Miso 8th pin down right, gpio19
  9. N/c

## End Stops

### Axis End Stops

For the Axis end stops the leds are normally on
For the endstops normally the sensors float high to 10v when not active. But go low to 0v when active
The optocoupler shorts the output pin low to 0v normally when sensor inactive (opto coupler on) then lets it float high when the sensor is active (opto coupler off)

Z End Stop

  * Blue and White
  * 3rd pin down on the left hand side
  * Gpio36

Y End Stop

  * Orange and White
  * 6th pin down on the left hand side
  * Gpio35

X End Stop

  * Green and White
  * 5th pin down on the left hand side
  * Gpio34

### Probe End Stop

For the Probe end stop the leds are normally on

Probe

  * Black and Orange
  * 7th pin down on the left hand side
  * Gpio32
