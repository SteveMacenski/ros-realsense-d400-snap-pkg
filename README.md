# snappkg-ros-realsense-d400
Snapcraft instructions and config file for ros realsense + librealsense snap installs

# Note

I changed the package.xml/CMakeLists.txt in realsense ros wrapper to make librealsense2 -> librealsense because their deps in package.xml are broken.

I had clone matching versions into the workspace and built with 2.0.3 in realsense ros and v2.10.2 in librealsense. 

The snap can be found [here]().

Install via:

```
sudo apt-get update && install snapcraft && snap install ros-realsense-d400
```

You can then run it in the isolated container using 

```
ros-realsense-d400
```