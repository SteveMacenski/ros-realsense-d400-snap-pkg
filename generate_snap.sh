#!/bin/sh

if [ -z "$1" ]; then
  echo "[INFO] No source directory given, assuming this is a developer execution in repo."
  echo "[INFO] CI must be given the location of the code base to grab snapcraft files."
  source_root=$PWD
else
  source_root=$1
fi

# make workspace
mkdir -p snap_ws/src
cd snap_ws && catkin_init_workspace
cd src

# add all the necessary things to it
git clone -b 2.0.3-stable https://github.com/SteveMacenski/realsense.git
git clone -b v2.10.3 https://github.com/IntelRealSense/librealsense.git
git clone -b master https://github.com/SteveMacenski/ros-realsense-d400-snap-pkg.git
cd ../

# move snap and hooks to right place
echo $source_root
cp -r $source_root/snap .

snapcraft
