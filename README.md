# Quadcopter Assisted Evacuation Simulation Work Space
Main workspace for my project done at [Simons Summer Research Program] (http://www.stonybrook.edu/simons/).

See the [poster](https://github.com/michaelhuang14/simons_project_ws/blob/master/SimonsPosterFinal.pdf) for summary of the project.

As the project uses latest [ROS](http://wiki.ros.org/) distribution (kinetic), and latest [Gazebo simulator](http://gazebosim.org/) built from source code,  many ROS packages used by the project are either unavailable in binary form or incompatible with the new Gazebo during the time frame of the project. This workspace serves as a holding area that includes many other components as git submodules. Note some of these submodule may be removed once they are available in compatible binary form

## Dependencies hosted in this work space
1. Modified version of [Menge](https://github.com/michaelhuang14/Menge)
2. [gazebo_ros_pkgs] (https://github.com/ros-simulation/gazebo_ros_pkgs.git)
3. [hector_gazebo] (https://github.com/tu-darmstadt-ros-pkg/hector_gazebo)
4. [hector_localization]( https://github.com/tu-darmstadt-ros-pkg/hector_localization)
5. [hector_models](https://github.com/tu-darmstadt-ros-pkg/hector_models)
6. [hector_quadrotor](https://github.com/tu-darmstadt-ros-pkg/hector_quadrotor)
5. [hector_slam]( https://github.com/tu-darmstadt-ros-pkg/hector_slam)
6. [menge_gazebo](https://github.com/michaelhuang14/menge_gazebo)

## External Dependencies
1. [Gazebo development branch] (https://bitbucket.org/osrf/gazebo)
   * See build instructions [here](http://gazebosim.org/tutorials?tut=install_from_source&cat=install) on additional dependencies.
   * Gazebo should be built and installed from source.
2. Ubuntu 16.04
3. [ROS kinetic](http://wiki.ros.org/kinetic/Installation/Ubuntu)
   * Do not install full desktop version (ros-kinetic-desktop-full) that includes gazebo7 binaries
   * Only install ros-kinetic-desktop or less
4. Other ROS dependencies can be installed by running "rosdep install --from-paths . --ignore-src --rosdistro kinetic" from "catkin_ws" directory 
   * ignore all gazebo related packages and answer "no" when prompted for confirming installation

## Steps to Build and Run
1. Follow [ROS kinetic installation instructions](http://wiki.ros.org/kinetic/Installation/Ubuntu) on Ubuntu to install *ros-kinetic-desktop* package
2. Follow instructions [here](http://gazebosim.org/tutorials?tut=install_from_source&cat=install) to download source, build and install gazebo
3. clone this repo including submodules
   * git clone --recursive https://github.com/michaelhuang14/simons_project_ws.git
4. build menge
   * cd simons_project_ws/Menge/projects/g++
   * make debug
5. build all ros packages in this repo
   * cd simons_project_ws/catkin_ws
   * rosdep install --from-paths . --ignore-src --rosdistro kinetic
   * catkin_make
6. Setup environment
   * in catkin_ws dir: source devel/setup.bash && source env_setup.sh
7. Run the simulation
   * in same terminal as step 6: roslaunch menge_hector_quadroto_demo menge_quadrotor_rand.launch
8. control the quadcopter in simulation:
   * in separate terminal repeat step 6 to setup environment
   * then in the same terminal run one of following.
   - roslaunch hector_quadrotor_teleop logitech_gamepad.launch (you need plugin a logitech gamepad to use this)
   -  rosrun teleop_twist_keyboard teleop_twist_keyboard.py (see instructions [here](http://wiki.ros.org/teleop_twist_keyboard))

