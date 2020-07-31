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
安裝Gazebo
```
sudo apt-get install ros-kinetic-gazebo-ros-pkgs ros-kinetic-gazebo-ros-control
啟動
roscore
rosrun gazebo_ros gazebo
```



# 建立套件
```
catkin_create_pkg 套件名稱 std_msgs rospy roscpp
cd ~/catkin_ws
catkin_make
source devel/setup.bash
```


# make robot
```
catkin_create_pkg RobotNAME_description urdf xacro
cd ~/catkin_ws
catkin_make
```


# Install  Cartographer ROS for TurtleBots
https://google-cartographer-ros-for-turtlebots.readthedocs.io/en/latest/
https://www.cnblogs.com/sea-stream/p/9799705.html
```
这里使用的是hitcm（张明明）的github地址，由于google官方的教程需要FQ下载一些文件，因此容易失败，经验证hitcm（张明明）对原文件进行了少许修改后可以成功安装，在他的修改中核心代码不变，只修改了编译文件。
We recommend using wstool and rosdep. For faster builds, we also recommend using Ninja.
# Install wstool and rosdep.
sudo apt-get update
sudo apt-get install -y python-wstool python-rosdep ninja-build
# Create a new workspace in 'catkin_ws'.
mkdir catkin_ws
cd catkin_ws
wstool init src
# 下载到catkin_ws下面的src文件夹下面
cd src
git clone https://github.com/hitcm/cartographer_ros.git
# 然后到catkin_ws下面运行catkin_make安装
cd
cd catkin_ws
catkin_make，可能会报以下错误：Fatal error: pcl/conversions.h: No such file or directory.，执行sudo apt-get install ros-indigo-pcl-conversions，再次catkin_make即可
```




