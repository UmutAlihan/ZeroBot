#!/bin/bash


#if node is not in your path:
#sudo ln -s /usr/bin/nodejs /usr/bin/node


sudo apt-get update
sudo apt-get upgrade
#sudo apt-get install apache2 node.js npm
git clone https://github.com/CoretechR/ZeroBot Desktop/touchUI
cd Desktop/touchUI
sudo npm install express
sudo npm install socket.io
sudo npm install pi-gpio
#to install nvm
#then restart the terminal
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
#to update node to a new version
nvm install v6.14.2

#to be able to use node with sudo run this:
sudo ln -s /home/<my_user>/.nvm/versions/node/v<version>/bin/node /usr/bin/node

#if you get EACCESS permission error try using this option: --unsafe-perm
#ln -s /usr/bin/nodejs /usr/bin/node -> threw another error
#additionally: npm install node-ads1x15 --save
#dosyanın en ustune "use strict" ekle -> sudo nano /usr/local/lib/node_modules/npm/bin/npm-cli.js
sudo apt-get install pigpio #for C library
sudo npm install pigpio
#or try this:  sudo npm install --unsafe-perm --verbose -g pigpio

#to run at boot install supervisor:
#apt-get install supervisor
#service supervisor restart
#ln -s /etc/supervisor/conf.d /destination/folder/path
#https://www.digitalocean.com/community/tutorials/how-to-install-and-manage-supervisor-on-ubuntu-and-debian-vps

#to install libjpeg62-turbo-dev run these 3 commands:
#wget https://archive.raspbian.org/raspbian.public.key -O - | sudo apt-key add -
#deb http://archive.raspbian.org/raspbian wheezy main contrib non-free
#deb-src http://archive.raspbian.org/raspbian wheezy main contrib non-free
#sudo apt-get install libavformat53 libpq5
#if fails: sudo apt-get -f install
#sudo apt-get install libjpeg62-turbo-dev
#https://stackoverflow.com/questions/37168424/how-to-install-libjpeg62-dev-on-raspberry-pi?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
#https://www.raspbian.org/RaspbianRepository

sudo apt-get install cmake

#sudo apt-get install libjpeg-dev
git clone https://github.com/jacksonliam/mjpg-streamer.git #~/mjpg-streamer
cd mjpg-streamer/mjpg-streamer-experimental
make clean all
sudo mkdir /opt/mjpg-streamer
sudo mv * /opt/mjpg-streamer

#into supervisorctl -> bash start_stream.sh
#Remove -vf and -hf  inside the file start_stream.sh to rotate the camera picture 180 degrees. 
#change start_stream.sh line to: (for webcam)
#LD_LIBRARY_PATH=/opt/mjpg-streamer/ /opt/mjpg-streamer/mjpg_streamer -i "input_uvc.so -r 640x480 -d /dev/video0 -f 30 -q 80" -o "output_http.so -p 9000 -w /opt/mjpg-streamer/www" #> /dev/null 2>&1&

#app.js en başına  #!/usr/bin/env node ekle

