LD_LIBRARY_PATH=/opt/mjpg-streamer/ /opt/mjpg-streamer/mjpg_streamer -i "input_raspicam.so -fps 4 -q 4 -x 640 -y 480" -o "output_http.so -p 3002 -w /opt/mjpg-streamer/www" > /dev/null 2>&1&

#-vf -hf  ->-fps'den önceki arg
