LD_LIBRARY_PATH=/opt/mjpg-streamer/ /opt/mjpg-streamer/mjpg_streamer -i "input_raspicam.so -rot 180 -fps 4 -q 5 -x 640 -y 480" -o "output_http.so -p 3003 -w /opt/mjpg-streamer/www" > /dev/null 2>&1&

#-fps'den once: -vf -hf
