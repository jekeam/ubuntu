lsb_release -a

# kill by grep
kill $(ps awx | grep 'usr/bin/python3.6 /home/bot/bot.py')

# change password
sudo -s
passwd

# /etc/apt/sources.list delete all and add rows:
deb http://ru.archive.ubuntu.com/ubuntu/ bionic main restricted
deb http://ru.archive.ubuntu.com/ubuntu/ bionic-updates main restricted
deb http://ru.archive.ubuntu.com/ubuntu/ bionic universe
deb http://ru.archive.ubuntu.com/ubuntu/ bionic-updates universe
deb http://ru.archive.ubuntu.com/ubuntu/ bionic multiverse
deb http://ru.archive.ubuntu.com/ubuntu/ bionic-updates multiverse

# update and upgrade system
apt-get update && apt-get upgrade

# install GUI
sudo apt install xfce4
# start GUI
sudo startx
# change default terminal emulator for manu
apt install xfce4-taskmanager

sudo apt-get update
sudo apt-get install -y xrdp
sudo apt-get install -y xfce4
sudo service xrdp restart
echo xfce4-session >~/.xsession

# 
locale
# 
sudo locale-gen ru_RU
sudo locale-gen ru_RU.utf8
# 
sudo dpkg-reconfigure locales
#
sudo update-locale LANG=ru_RU.UTF-8

# install ifconfig
apt install net-tools

# deleted rm to trsh
sudo apt-get install trash-cli
alias rm=trash
# or add
alias rm='rm -i' # in file ~/.bashrc
# You can always access the real rm by using one of the following method:
# command rm something
# 'rm' something
# \rm something
. ~/.bashrc

# There are also commands to access the trashcan from terminal, trash-list, restore-trash (or trash-restore), 
# trash-empty installable from package trash-cli (then see their man pages).

# SVN
sudo apt install subversion
# Change timezone
sudo dpkg-reconfigure tzdata
date

# Remove directory with files
rm -r <folder_name>

# install pip for python3.6
sudo apt install curl
sudo apt-get install python3-distutils
wget https://bootstrap.pypa.io/get-pip.py
sudo python3.6 get-pip.py

# Install MySQL
sudo apt update
sudo apt install mysql-server
sudo mysql_secure_installation
sudo mysql -u root -p
# create schema dumps
sudo mysqldump -u root -p <schema_name|--all-databases> > <file_name>.sql
# Explorer
sudo apt update
sudo apt install mysql-workbench

# new db on server 2
# upload
mysqldump --databases db1 > dump.sql -u root -p
# download
mysql < dump.sql -u root -p

# mysqladmin Command To Change Root Password
mysqladmin -u root -p password

# reinstall mysql 
https://linuxscriptshub.com/uninstall-completely-remove-mysql-ubuntu-16-04/

# systemd
cd etc/systemd/system/
/etc/systemd/system/NAME.service 
sudo systemctl daemon-reload
sudo systemctl enable sitbot.service
sudo systemctl start sitbot.service
systemctl list-timers

# Programs
sudo apt update
sudo apt install firefox
sudo apt install snapd

# git ~/.ssh https://help.github.com/en/github/authenticating-to-github/checking-for-existing-ssh-keys
# https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
cd ~/.ssh/
ssh-keygen -t rsa -b 4096 -C "your@email"
ls -al
eval $(ssh-agent -s)
ssh-add ~/.ssh/github
# if command cat - not work!!!
vi ~/.ssh/github.pub
# add to ~/.ssh/config
# vi ~/.ssh/config
# IdentityFile ~/.ssh/github
# sudo /etc/init.d/ssh restart
# check: ssh-keygen -l -E md5 -f ~/.ssh/github.pub
# check in session: ssh-add -l -E md5
#!/bin/bash
eval `ssh-agent -s`
ssh-add

# kill by grep
kill $(ps awx | grep 'acc_id' | awk '{print $1}')



# E: Unable to locate package при установке пакетов в ubuntu
echo "deb http://archive.ubuntu.com/ubuntu trusty main universe" >> /etc/apt/sources.list
apt-get update
