# LAMM Ox CNC Software Docs

## Starting point

* Raspberry Pi 3
* Raspbian Jessy Lite

## Initial setup

1. Image an SD card with Raspbian (we're using a 16GB one)
2. Power up the Pi and figure out what the IP address is.  Connect with `ssh pi@192.168.1.143`, default password: `raspberry`
3. Resize the filesystem to fill the full card: `sudo raspi-config`, select `Expand Filesystem`, hit `OK` a couple of times, then `Finish` and reboot
4. Reconnect with SSH, and update the package lists: `sudo apt-get update`
5. Change the `pi` user's password by running `passwd`. Enter the old password when prompted, then the new password twice.
5. Install git: `sudo apt-get install git`

## ChiliPeppr installation

1. Go to chilipeppr.com, find the Serial Port Console workspace (http://chilipeppr.com/serialport) and download the Raspberry Pi distribution: `serial-port-json-server-1.88_linux_arm.tar.gz`
2. Create a new user to run it on the Pi.  While logged in as `pi`: `sudo adduser cnc`. Enter a password when prompted.
3. When prompted for user information, set the full name to `cnc` and accept the (blank) defaults for all other fields
4. Add the new `cnc` user to the sudoers list by creating a file called `/etc/sudoers.d/cnc` with mode 0440 and the content: `cnc ALL=(ALL) ALL`
5. Switch user to `cnc`: `su - cnc`, then enter the password
6. Transfer the workspace downloaded in step 1 to the pi. I used (from my machine, note the trailing colon): `scp serial-port-json-server-1.88_linux_arm.tar.gz cnc@192.168.1.143:`
7. Back on the pi, extract the newly transferred workspace: `tar xzf serial-port-json-server-1.88_linux_arm.tar.gz`
8. Change into the new directory and start up the server: `cd serial-port-json-server-1.88_linux_arm`, `./serial-port-json-server`
9. Now go back to the ChiliPeppr site and test the connection. Open http://chilipeppr.com/serialport, enter the Pi's IP address on the "Your Servers" tab and hit connect

## ChiliPeppr server setup

If the connection test is successful, you'll want to stop the server and set it to run on startup.

1. Back on the Pi, stop the server by hitting Ctrl+C.
2. Add the server to the `cnc` user's crontab: `@reboot /home/cnc/serial-port-json-server-1.88_linux_arm/serial-port-json-server`
3. Reboot the Pi to test whether the server starts up automatically: `sudo shutdown -r now`
4. Use the ChiliPeppr site to test the connection again, and hopefully... success!