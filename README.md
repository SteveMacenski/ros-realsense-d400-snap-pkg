# Ubuntu Snaps of ROS Realsense and librealsense2 for the D4xx cameras
 
[![Get it from the Snap Store](https://snapcraft.io/static/images/badges/en/snap-store-black.svg)](https://snapcraft.io/ros-realsense-d400)


## Installation
Install via:

```
sudo apt-get update && sudo apt install snapcraft && snap install ros-realsense-d400
```

## Usage 

You can then run it in the isolated container using 

```
sudo snap set ros-realsense-d400 serialno=[serial] cameraid=[camera namespace] profile=[profile number] masterhostname=[IP address or hostname] iron=[true/false to enable]
ros-realsense-d400
```

If the values are not set or some are set, it will run the default `rs_camera.launch` file in the default namespace (`camera`) with the default profile for the unset parameters. 

## Supported Profiles

```
0 - default
1 - 6 fps color/depth, optional IR @ depth resolution, downsampled to minimum (320x180/424x240)
2 - 6 fps color/depth, optional IR @ all default resolutions
```

## Motive

The install process for librealsense and ros realsense wrappers alike frustrates me without end. Inconsistent with different machines or what you had for lunch or if Mercury is in retrograde. As a result, I'm going to do it ONCE per 0.x.0 releases of the ROS wrapper with the stable supported librealsense. 

I can only imagine the other poor souls in agony with me so I decided to just publish it publicly and support for whoever stumbles onto this. If you want additional features or configs, feel free to PR, as long as it compiles I'll add it to future releases.

## My release instructions (for myself)

- [ ] Change the flags for the branches wanting to update
- [ ] Increment up version in the `snapcraft.yaml` file
- [ ] Push to master and wait for CI to build
- [ ] `snapcraft list-revisions ros-realsense-d400` to look at revs 
- [ ] `snapcraft release ros-realsense-d400 [rev] edge` to release to edge for testing
- [ ] `sudo snap refresh ros-realsense-d400 --devmode --edge` refresh to test
- [ ] `snapcraft release ros-realsense-d400 [rev] beta` to release to wider stable production use.
