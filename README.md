# Ubuntu Snaps of ROS Realsense and librealsense2 for the D4xx cameras

## General Notes

I changed the package.xml/CMakeLists.txt in realsense ros wrapper to make librealsense2 -> librealsense because their deps in package.xml are broken.

I had clone matching versions into the workspace and built with 2.0.3 in realsense ros and v2.10.2 in librealsense. 

## Snap store entry
The snap can be found [here]().

## Installation
Install via:

```
sudo apt-get update && install snapcraft && snap install ros-realsense-d400
```

You can then run it in the isolated container using 

```
ros-realsense-d400
```