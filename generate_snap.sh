#!/bin/sh

# if shouldn't use snap master branch
if [ -z "$1" ]; then
  branch=master
else
  branch=$1
fi

# make workspace
mkdir -p snap_ws/src
cd snap_ws && catkin_init_workspace
cd src

# add all the necessary things to it
git clone -b 2.0.3-stable https://github.com/SteveMacenski/realsense.git
git clone -b v2.10.3 https://github.com/IntelRealSense/librealsense.git
git clone -b $branch https://github.com/SteveMacenski/ros-realsense-d400-snap-pkg.git
cd ../

# move snap and hooks to right place
cp -r src/ros-realsense-d400-snap-pkg/snap .

# build the snap
snapcraft

# go back to root
cd ../
