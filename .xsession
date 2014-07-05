#!/bin/sh

syndaemon -i 0.3 -d -t -K

nm-applet &

echo 2 | sudo tee /sys/module/hid_apple/parameters/fnmode
