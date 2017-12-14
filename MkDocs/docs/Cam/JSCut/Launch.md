1. First export solidworks face of part to dxf
2. then load dxf into inksscape
3. then use inkscape's object to path command


When using JScut

  * http://jscut.org/jscut.html#

make sure to position the head about 3mm down on the z axis first then zero the machine
the G-Code will raise the head by 2.5mm between movements from area to area so this is important
otherwise the Z axis will try to go too high and trip the alarm / end stop


also document settings file