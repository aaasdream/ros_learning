#!/bin/bash
# 這是自動安裝openvslam 安裝在~/openvslam_pkg/openvslam/build 下面
# glew-2.1.0
# eigen-3.3.7
# g2o
# opencv 3.4.5
# Pangolin
# openvslam


sudo apt-get update
sudo apt-get install -y build-essential pkg-config cmake git wget curl unzip
sudo apt-get install -y libatlas-base-dev libsuitesparse-dev
sudo apt-get install -y libgtk-3-dev
sudo apt-get install -y ffmpeg
sudo apt-get install -y libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libavresample-dev
sudo apt-get install -y libgoogle-glog-dev libgflags-dev
sudo apt-get install -y libopenblas-dev
sudo apt-get install -y --no-install-recommends libboost1.65-all-dev 
sudo apt-get install -y libx11-dev 
sudo apt-get install -y libgl1-mesa-dev 
sudo apt-get install -y freeglut3-dev 
sudo apt-get install -y doxygen 

mkdir ~/openvslam_pkg
cd ~/openvslam_pkg
wget https://sourceforge.net/projects/glew/files/glew/2.1.0/glew-2.1.0.tgz
tar -xzvf glew-2.1.0.tgz 
cd glew-2.1.0
make -j2
sudo make install 
sudo ln -s /usr/lib64/libGLEW.so.2.1 /usr/lib/libGLEW.so.2.1


cd ~/openvslam_pkg
wget https://github.com/eigenteam/eigen-git-mirror/archive/3.3.7.tar.gz 
tar -xzvf 3.3.7.tar.gz 
mv eigen-git-mirror-3.3.7/ eigen-3.3.7/ 
cd eigen-3.3.7/ 
mkdir build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    ..
make -j2
sudo make install 

cd ~/openvslam_pkg
git clone https://github.com/RainerKuemmerle/g2o.git
cd g2o
mkdir build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DCMAKE_CXX_FLAGS=-std=c++11 \
    -DBUILD_SHARED_LIBS=ON \
    -DBUILD_UNITTESTS=OFF \
    -DBUILD_WITH_MARCH_NATIVE=ON \
    -DG2O_USE_CHOLMOD=ON \
    -DG2O_USE_CSPARSE=ON \
    -DG2O_USE_OPENGL=OFF \
    -DG2O_USE_OPENMP=ON \
    ..
make -j2
sudo make install 

cd ~/openvslam_pkg
wget -q https://github.com/opencv/opencv/archive/3.4.5.zip
unzip -q 3.4.5.zip
rm -rf 3.4.5.zip
cd opencv-3.4.5
mkdir -p build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    -DENABLE_CXX11=ON \
    -DBUILD_DOCS=OFF \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_JASPER=OFF \
    -DBUILD_OPENEXR=OFF \
    -DBUILD_PERF_TESTS=OFF \
    -DBUILD_TESTS=OFF \
    -DWITH_EIGEN=ON \
    -DWITH_FFMPEG=ON \
    -DWITH_OPENMP=ON \
    ..
make -j2
sudo make install 


cd ~/openvslam_pkg
git clone https://github.com/stevenlovegrove/Pangolin.git
cd Pangolin
mkdir build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    ..
make
sudo make install 

cd ~/openvslam_pkg
git clone https://github.com/shinsumicco/DBoW2.git
cd DBoW2
mkdir build && cd build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    ..
make -j2
sudo make install 
sudo ldconfig -v

cd ~/openvslam_pkg
git clone https://github.com/jbeder/yaml-cpp
cd yaml-cpp
mkdir build && cd build
cmake \
​    -DYAML_BUILD_SHARED_LIBS=ON \
​    -DCMAKE_BUILD_TYPE=Release \
​    -DCMAKE_INSTALL_PREFIX=/usr/local \
​    ..
make -j2
sudo make install 

cd ~/openvslam_pkg
git clone https://github.com/xdspacelab/openvslam
cd openvslam
git submodule init
git submodule update
mkdir build && cd build
cmake \
    -DBUILD_WITH_MARCH_NATIVE=OFF \
    -DUSE_PANGOLIN_VIEWER=ON \
    -DUSE_STACK_TRACE_LOGGER=ON \
    -DBOW_FRAMEWORK=DBoW2 \
    -DBUILD_TESTS=OFF \
    ..
make -j2
