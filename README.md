# ros_learning
ROS

# 安裝ROS
http://wiki.ros.org/kinetic/Installation/Ubuntu
```
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt install curl
curl -sSL 'http://keyserver.ubuntu.com/pks/lookup?op=get&search=0xC1CF6E31E6BADE8868B172B4F42ED6FBAB17C654' | sudo apt-key add -
sudo apt-get update
sudo apt-get install ros-kinetic-desktop-full
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosdep python-rosinstall python-rosinstall-generator python-wstool build-essential
sudo apt install python-rosdep
sudo rosdep init
rosdep update
```
# 建立工作環境
http://wiki.ros.org/ROS/Tutorials/CreatingPackage
```
建立資料夾與src
mkdir -p ~/catkin_ws/src
cd ~/catkin_ws/src
catkin_init_workspace
cd ~/catkin_ws/
catkin_make
source devel/setup.bash
echo "source ~/catkin_ws/devel/setup.bash" >> ~/.bashrc
```
# 建立套件
```
catkin_create_pkg 套件名稱 std_msgs rospy roscpp
cd ~/catkin_ws
catkin_make
```


# make robot
```
catkin_create_pkg RobotNAME_description urdf xacro
cd ~/catkin_ws
catkin_make
```


# Install  Cartographer ROS for TurtleBots
https://google-cartographer-ros-for-turtlebots.readthedocs.io/en/latest/





