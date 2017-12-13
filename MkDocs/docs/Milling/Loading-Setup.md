# Loading the G-Code

## Loading from a local file on Disk

In order to load a local G-Code file on disk, you basically just drag and drop the file on top of the browser window with Chillipepr In


## Recent Files

Chillipepr seems to cache the most recent files that have been dragged / dropped onto it.
If you need to clear the cache for any reason the controls at the upper left can be used.
These can also reset the G-Code to the default Chillipepr logo.

<a href="../../images/Milling/Loading-Setup/Loading1.png"><img src="../../images/Milling/Loading-Setup/Loading1.png" height="50%" width="50%" ></a> <br>

<a href="../../images/Milling/Loading-Setup/Loading2.png"><img src="../../images/Milling/Loading-Setup/Loading2.png" height="50%" width="50%" ></a> <br>


## Loading from JSCut

JSCut is an online CAM software for milling simple 2D profiles (i.e. inkscape diagrams similar to the laser cutter)

  * <http://jscut.org/>

From what I understand if JSCut is open at the same time as Chillipepr within the browser, it's possible to use this button to copy the G-Code across without having to export / import files.

<a href="../../images/Milling/Loading-Setup/JSCut1.png"><img src="../../images/Milling/Loading-Setup/JSCut1.png" height="50%" width="50%" ></a> <br>


## Eagle BRD Load

Chillipepr also has support for converting Eagle board files into G-Code.
Personally I'd recommend using FlatCAM instead to load in a gerber file / export the G-Code as this can be used with any app that supports the gerber export format.

<a href="../../images/Milling/Loading-Setup/Eagle1.png"><img src="../../images/Milling/Loading-Setup/Eagle1.png" height="50%" width="50%" ></a> <br>


## Auto Levelling

One of the main problems with milling PCB's is that the copper board tends not to be completely flat.
So you end up ether milling too much and making a mess of the board, or not enough missing some parts of the board.

One way around this is to use an inductive proximity sensor to take measurements of the copper board relative to the milling head.
Typically, this is wired into Z-Min I think on the board. This can then be used as an offset to the milling profile to compensate for an uneven Copper board.

It should be mentioned that other software such as FlatCAM also have these features inbuilt as well as double sided board support, although I have yet to try this out (since we don't have a sensor wired in just yet)

I spotted this online tutorial here

  * <https://www.youtube.com/watch?v=6WNE3E1ZZYY>

<a href="../../images/Milling/Loading-Setup/AutoLevel1.png"><img src="../../images/Milling/Loading-Setup/AutoLevel1.png" height="50%" width="50%" ></a> <br>

