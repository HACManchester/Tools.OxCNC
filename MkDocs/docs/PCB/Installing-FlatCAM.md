# Installing FlatCam

FlatCAM is useful for turning Gerber or Drill files from PCB software into G-Code for a CNC (or svg for a laser cutter) <br>
The existing self installing version of flatcam is quite old (around 2016). <br>
so below I've tried to details the minimum set of steps needed to get it working from source.


## Installing Python

First we need to make sure python 2.7 is installed on the system.
For windows I'd recommend the 64bit version of python 2.7 from <br>
<https://www.python.org/downloads/>


### Installing PyQt4

One of the things FlatCam uses is QT4 for python. This is fairly easy to install under windows <br>
First go to this address

  * <https://www.lfd.uci.edu/~gohlke/pythonlibs/#pyqt4>

If your looking for the python 2.7 / 64bit windows file then this will likley be something like **PyQt4-4.11.4-cp27-cp27m-win_amd64.whl** <br>
To install it into python 2.7
```
C:\Python27\Scripts\pip.exe install PyQt4-4.11.4-cp27-cp27m-win_amd64.whl
```


### Installing pypiwin32

One thing we also need is pypiwin32 under windows, to install this run the following from the command line
```
C:\Python27\Scripts\pip.exe install pypiwin32
```

I found on my system I had to force it to re-install for some reason, so if you run into problems running flatcam you may want to try
```
C:\Python27\Scripts\pip.exe install --upgrade --force-reinstall pypiwin32
```


## Download sources of Flatcam

Next we need to download the source code of flatcam. <br>
One way is to just download the below zip file and extract it into a directory somewhere

  * <https://bitbucket.org/jpcgt/flatcam/get/master.zip>

Another way if you can use git is to run the following at a command line
```
git clone https://bitbucket.org/jpcgt/flatcam
```


## Running Flatcam

Next to try running flatcam
```
cd flatcam
C:\Python27\python flatcam
```
