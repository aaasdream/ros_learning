```
-- Could NOT find move_base_msgs (missing: move_base_msgs_DIR)
-- Could not find the required component 'move_base_msgs'. The following CMake error indicates that you either need to install the package with the same name or change your environment so that it can be found.
CMake Error at /opt/ros/melodic/share/catkin/cmake/catkinConfig.cmake:83 (find_package):
  Could not find a package configuration file provided by "move_base_msgs"
  with any of the following names:

    move_base_msgsConfig.cmake
    move_base_msgs-config.cmake

  Add the installation prefix of "move_base_msgs" to CMAKE_PREFIX_PATH or set
  "move_base_msgs_DIR" to a directory containing one of the above files.  If
  "move_base_msgs" provides a separate development package or SDK, be sure it
  has been installed.
Call Stack (most recent call first):
  mrobot_navigation/CMakeLists.txt:7 (find_package)

```
# RES
https://answers.ros.org/question/188606/cmake-error-with-move_base_msgs/
```
cd ~/ros_catkin_ws/src
git clone https://github.com/ros-planning/navigation_msgs.git
```


```
SUMMARY
========

PARAMETERS
 * /mrobot_teleop/scale_angular: 0.4
 * /mrobot_teleop/scale_linear: 0.1
 * /rosdistro: melodic
 * /rosversion: 1.14.6

NODES
  /
    mrobot_teleop (mrobot_teleop/mrobot_teleop.py)

ROS_MASTER_URI=http://localhost:11311

ERROR: cannot launch node of type [mrobot_teleop/mrobot_teleop.py]: Cannot locate node of type [mrobot_teleop.py] in package [mrobot_teleop]. Make sure file exists in package path and permission is set to executable (chmod +x)
```

# 解法 將scripts中的mrobot_teleop.py chmod +x mrobot_teleop.py
```
~/catkin_ws/src/mrobot_teleop/scripts$ chmod +x mrobot_teleop.py 
```
