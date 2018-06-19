# Ubuntu Snaps of ROS Realsense and librealsense2 for the D4xx cameras

## General Notes

I changed the package.xml/CMakeLists.txt in realsense ros wrapper to make librealsense2 -> librealsense because their deps in package.xml are broken.

I had clone matching versions into the workspace and built with 2.0.3 in realsense ros and v2.10.2 in librealsense. 

## Snap store entry
The snap can be found [here]().

## Installation
Install via:

```
sudo apt-get update && install snapcraft && snap install ros-realsense-d400 --devmode --edge
```

You can then run it in the isolated container using 

```
ros-realsense-d400
```

## Motive

The install process for librealsense and ros realsense wrappers alike frustrates me without end. Inconsistent with different machines or what you had for lunch or if Mercury is in retrograde. As a result, I'm going to do it ONCE per 0.x.0 releases of the ROS wrapper with the stable supported librealsense. 

I can only imagine the other poor souls in agony with me so I decided to just publish it publicly and support for whoever stumbles onto this. If you want additional features or configs, feel free to PR, as long as it compiles I'll add it to future releases. Examples that someone might care about: specifying camera number with [hooks](https://docs.snapcraft.io/build-snaps/hooks), other launch files, other config files. 
