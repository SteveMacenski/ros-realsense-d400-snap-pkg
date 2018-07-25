cmake_minimum_required(VERSION 2.8.3)
project(ros_realsense_d400_snap_pkg)

find_package(catkin REQUIRED COMPONENTS)

catkin_package()

# Install xml and snapcraft entry point files
install(FILES rs_camera_snap.sh
     DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
     PERMISSIONS OWNER_EXECUTE OWNER_WRITE OWNER_READ
                 GROUP_EXECUTE GROUP_READ
                 WORLD_EXECUTE WORLD_READ
)
