#!/bin/sh

autossh -p 37212 -M 0 -o "ExitOnForwardFailure yes" -o ServerAliveInterval=30 -o ServerAliveCountMax=3 -nNTvvv -R 0.0.0.0:2098:localhost:3002 -R 0.0.0.0:2099:localhost:3003 uad@128.199.50.73 > /home/pi/zerobot/forward.log

#port_t @Touch.html
