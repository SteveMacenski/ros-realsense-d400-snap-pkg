#!/bin/sh

# store locally variables from snapcraft
serial_no=`snapctl get serialno`
camera=`snapctl get cameraid`
profile=`snapctl get profile`

# set global ones to empty again to reset
sudo snap set ros-realsense-d400 serialno="" cameraid="" profile=""

roslaunch --wait realsense2_camera rs_camera.launch serial_no:=$serial_no camera:=$camera # TODO profiles 
