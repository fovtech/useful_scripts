# debian_9_to_10_update.sh - Upgrade from Debian 9 to Debian 10
# FOV Tech s.r.o.
#
# This is a simple script which performs an upgrade from Debian 9 to Debian 10
# This script expects that "sudo" is installed. If not, please uncomment the line 6.
#
# apt-get install sudo -y

sudo apt update -y
sudo apt upgrade -y
sudo apt full-upgrade -y
sudo apt --purge autoremove -y

sudo cp -v /etc/apt/sources.list /root/
sudo cp -rv /etc/apt/sources.list.d/ /root/
sudo sed -i 's/stretch/buster/g' /etc/apt/sources.list
sudo sed -i 's/stretch/buster/g' /etc/apt/sources.list.d/*

sudo apt update -y
sudo apt upgrade -y
sudo apt full-upgrade -y

sudo reboot
