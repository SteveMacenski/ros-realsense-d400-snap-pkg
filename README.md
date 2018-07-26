# Ubuntu Snaps of ROS Realsense and librealsense2 for the D4xx cameras [![Build Status](https://travis-ci.org/SteveMacenski/ros-realsense-d400-snap-pkg.png)](https://travis-ci.org/SteveMacenski/ros-realsense-d400-snap-pkg)

## Snap store entry
The snap can be found [here]().

## Installation
Install via:

```
sudo apt-get update && install snapcraft && snap install ros-realsense-d400 --devmode --edge
```

You can then run it in the isolated container using 

```
snap set ros-realsense-d400 serialno=[serial] cameraid=[camera namespace] profile=[profile number]
ros-realsense-d400
```

If the values are not set or some are set, it will run the default `rs_camera.launch` file in the default namespace (`camera`) with the default profile for the unset parameters. 

## Supported Profiles

```
0 - default
1 - 6 fps color/depth, no IR, downsampled to minimum (320x180/424x240)
```

## Motive

The install process for librealsense and ros realsense wrappers alike frustrates me without end. Inconsistent with different machines or what you had for lunch or if Mercury is in retrograde. As a result, I'm going to do it ONCE per 0.x.0 releases of the ROS wrapper with the stable supported librealsense. 

I can only imagine the other poor souls in agony with me so I decided to just publish it publicly and support for whoever stumbles onto this. If you want additional features or configs, feel free to PR, as long as it compiles I'll add it to future releases.

## My release instructions (for myself)

- [ ] Change the flags for the branches wanting to update
- [ ] Increment up version in the `snapcraft.yaml` file
- [ ] Verify after CI that the new version is on edge
- [ ] If its determined to be a stable release, manually add to the stable track
