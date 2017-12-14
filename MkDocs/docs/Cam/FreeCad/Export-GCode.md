# FreeCAD - Exporting G-Code


## Export of G-Code Method 1

The first way to generate the G-Code is just to use File -> Export within the Path Workspace

### Select Path Project

First select the Path Project within the FreeCad Part

<a href="../../images/FreeCad/Export-GCode/SelectProject.png"><img src="../../images/FreeCad/Export-GCode/SelectProject.png" height="30%" width="30%" ></a> <br>


### Select File Export

Next Select File -> Export from the menu

<a href="../../images/FreeCad/Export-GCode/FileExport.png"><img src="../../images/FreeCad/Export-GCode/FileExport.png" height="30%" width="30%" ></a> <br>


### Select G-Code for Export

Make sure to select **G-Code** in the drop down box for the file save prompt <br>
and choose a save destination.

<a href="../../images/FreeCad/Export-GCode/FileSave1.png"><img src="../../images/FreeCad/Export-GCode/FileSave1.png" height="50%" width="50%" ></a> <br>


### Choose the Post Processor

Next we need to choose a file pre-processor, some devices need a bit of special formatting for the G-Code.
The pre-processor typically handles this for different devices, with FreeCAD this is typically a python script <br>
I believe selecting **linuxcnc_post** should be good enough for grbl (TODO this needs to be tested)

<a href="../../images/FreeCad/Export-GCode/PostProc1.png"><img src="../../images/FreeCad/Export-GCode/PostProc1.png" height="30%" width="30%" ></a> <br>


### G-Code Preview

Finally, we should get a preview of the G-Code in a window before it saves it

<a href="../../images/FreeCad/Export-GCode/GCode-Preview.png"><img src="../../images/FreeCad/Export-GCode/GCode-Preview.png" height="40%" width="40%" ></a> <br>


## Export of G-Code Method 2

Another way to export the G-Code is to setup the project with a predefined file path and pre-processor so you don't have to keep clicking lots of buttons each time etc.


### Set the Output File Path

First select the project <br>
In the bottom window underneath there should be a field called Output File, this can be used to set the output path for the generated G-Code

<a href="../../images/FreeCad/Export-GCode/SelectProject2.png"><img src="../../images/FreeCad/Export-GCode/SelectProject2.png" height="30%" width="30%" ></a> <br>


### Set the Pre-processor

By selecting the Machine node under the Path Project it should be possible to select the pre-processor here

<a href="../../images/FreeCad/Export-GCode/PostProc2.png"><img src="../../images/FreeCad/Export-GCode/PostProc2.png" height="30%" width="30%" ></a> <br>

TODO this doesn't seem to work under Windows, I think this is a bug that causes this only to work under Linux at the moment


### Click the Post Process Button

Finally, we can click the post process button on the toolbar to get a preview / save the part / generate the G-Code

<a href="../../images/FreeCad/Export-GCode/PostProc3.png"><img src="../../images/FreeCad/Export-GCode/PostProc3.png" height="50%" width="50%" ></a> <br>
