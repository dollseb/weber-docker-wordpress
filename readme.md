

# 1. Installation Raspberry Pi OS

docker installation documentation 
https://www.raspberrypi.com/documentation/computers/getting-started.html#install-an-operating-system


# 2. Installation Docker

docker installation documentation (install-using-the-convenience-script):
https://docs.docker.com/engine/install/raspberry-pi-os/#install-using-the-convenience-script

or use ./install-docker.sh

# 3. Autostart
Drag/Drop the application to the user's autostart folder -> /home/$USER/.config/autostart

# 4. Workflow

``` shell
chmod u+x fix-permissions.sh
./fix-permissions.sh
./install-docker.sh
./start.sh
```