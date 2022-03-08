#!/bin/sh -
# disable power management for wifi
iwconfig wlan0 power off
# run video server
export LD_LIBRARY_PATH=/usr/local/lib/mjpg-streamer
mjpg_streamer -o "output_http.so -w /usr/local/share/mjpg-streamer/www -p 80" -i "input_uvc.so -r 1280x720" 

