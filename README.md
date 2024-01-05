# AGV - Autonomous Ground Vehicle

Autonomous Ground Vehicles have endless possibilities, from self driving cars, to warehouse robots and to exploration robots in hazardous locations. In this project, my aim is to implement various motion planning algorithms on a mobile manipulator. 

### Mobile Manipulator

For this project, I am working with a mobile manipulator which has a 12V DC motor which controls all four wheels and a 5V Servo motor which is used for steering. A Raspberry Pi 4 is used as the onboard computer to control these motors and other sensors. The DC motor has an inbuilt Encoder to collect odometry data. A LiDAR is being used to collect data about its surroundings. Finally a MPU 6050 module is used, which has an inbuilt three-axis accelerometer and a three-axis gyroscope, to collect data about its motion and orientation. 

![                  Flow chart showing the basic working between different components in the mobile manipulator.](AGV%20-%20Autonomous%20Ground%20Vehicle/Untitled.png)

'Flow chart showing the basic working between different components in the mobile manipulator.'

### Setup of Raspberry Pi 4 (RasPi 4)

The Raspberry Pi 4 should be first installed with the Raspbian OS, which is the default OS supported by the Raspberry Pi team. Later on, there are two ways to operate it:

- ************Normal************
- ****************Headless****************

******************Normal -****************** In this mode, we connect a monitor, a mouse and a keyboard to the RasPi board and use it as a regular computer. 

**********************Headless -**********************  This is used usually when a monitor is not available. The most common headless mode is to establish an SSH communication using an Ethernet cable and then use the terminal in the main laptop to enter commands. The other more uncommon method is to set up a VNC server to virtually view the GUI of RasPi. 

The exact steps will be updated soon. 

### Working with LiDAR

There is a Python Library called PyLidar which helps us get the data from LiDAR.
It is also possible to run the LiDAR using ROS.

The exact steps will be updated soon.

[![Watch the video](https://img.youtube.com/vi/h8RIfQsm1oA/0.jpg)](https://youtu.be/h8RIfQsm1oA)
`LiDAR data with Python`

[![Watch the video](https://img.youtube.com/vi/RCLkwQKz7lU/0.jpg)](https://youtu.be/RCLkwQKz7lU)
`LiDAR data with ROS`

[![Watch the video](https://img.youtube.com/vi/OdTOKA_aFwM/0.jpg)](https://youtu.be/OdTOKA_aFwM)
`LiDAR data with Master-Slave communication ROS`

### Moving the Motors

The motors can be run using the GPIO pins of the RasPi board. A default Python library for RasPi is called RPi.GPIO will be used. 

The exact steps will be updated soon. 

### The motion planning algorithms are discussed separately.
