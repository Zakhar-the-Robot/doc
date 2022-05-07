# ROS instalation

At the time of summer 2020 there is no way to install noetic on Raspberry Pi OS. That's why we will build it manually

## ROS Noetic build

### Step 1 — Set up ROS Noetic repo on Raspberry Pi 4

```bash
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu buster main" > /etc/apt/sources.list.d/ros-noetic.list'
```

### Step 2 — Add official ROS key

```bash
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
```

### Step 3 — Pull all meta info of ROS Noetic packages

```bash
sudo apt update
```

### Step 4 — Install build dependencies on Raspberry Pi 4

```bash
sudo apt-get install -y python-rosdep python-rosinstall-generator python-wstool python-rosinstall build-essential cmake
```

### Step 5 — Set up ROS Noetic dependency sources/repos

```bash
sudo rosdep init
rosdep update
```

### Step 6 — Fetch & Install ROS Noetic dependencies

```bash
mkdir ~/ros_catkin_ws
cd ~/ros_catkin_ws
rosinstall_generator ros_comm --rosdistro noetic --deps --wet-only --tar > noetic-ros_comm-wet.rosinstall
wstool init src noetic-ros_comm-wet.rosinstall
rosdep install -y --from-paths src --ignore-src --rosdistro noetic -r --os=debian:buster
```

### Step 7 — Compiling Noetic packages on Raspberry Pi 4

```bash
sudo src/catkin/bin/catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release --install-space /opt/ros/noetic -j1 -DPYTHON_EXECUTABLE=/usr/bin/python3
```

### Done!

As a source of this manual was used an article:

[How to Install ROS Noetic on Raspberry Pi 4 - VarHowto](https://varhowto.com/install-ros-noetic-raspberry-pi-4/)