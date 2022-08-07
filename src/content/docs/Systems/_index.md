---
title: "Systems and Components"
---

# Systems and Components

Zakhar consists of Units. Each Unit is a separate device with specific function.

The Units are designed to communicate with each other though a CAN-bus network. Zakhar has its own simple protocol [qCAN]({{< ref "docs/Communication Protocols/canbus" >}}) built on top of bare CANbus.

Each Unit represents a qCAN device with its unique DeviceID. Since it is possible to have two DeviceID on a single Unit we will use a term Node. Node is an qCAN-compatible CANbus device with a unique DeviceID.

Technically all Nodes can send and receive data and commands, but only one (Brain) is developed to perform as the Main Node. Other Nodes can be considered as Secondary ones. The Main Node differs of Secondary Nodes by possibility of command sending. Secondary Nodes can only receive commands and send data.

## Systems

All Units are split into Systems. A System is a group of Units serving a specific purpose. There are 4 Systems. Here is the full list and operating areas of each System:

- Brain System
    - Processing of data from Secondary Nodes
    - Decision making
    - Control
- IO (In/Out) System
    - Collecting data from sensors (In)
    - Interacting with the User: sound, video, light, etc. (Out)
- Motion System
    - Physical interactions
    - Movements
- Diagnostics and Development (DnD) System
    - Collecting of technical information for diagnostics
    - Technical support for the development - OTA controller updates, etc.

## Units

Here is the full list of Zakhar Units:

- **Brain System**
    - Brain Unit
    [![Documentation Button](https://img.shields.io/badge/doc-orange)]({{< ref "docs/Systems/Brain" >}} "Go to Documentation")
    [![Source Button](https://img.shields.io/badge/src-grey)](https://github.com/Zakhar-the-Robot/brain "Go to Repository")
- **IO (In/Out) System**
    - Face Unit
    [![Documentation Button](https://img.shields.io/badge/doc-orange)]({{< ref "docs/Systems/IO/Face" >}} "Go to Documentation")
    [![Source Button](https://img.shields.io/badge/src-grey)](https://github.com/Zakhar-the-Robot/io_face "Go to Repository")
    - Sensor Unit (Sensors)
    [![Documentation Button](https://img.shields.io/badge/doc-orange)]({{< ref "docs/Systems/IO" >}} "Go to Documentation")
    [![Source Button](https://img.shields.io/badge/src-grey)](https://github.com/Zakhar-the-Robot/io_sensors "Go to Repository")
- **Motion System**  
    - Wheeled Platform Unit
    [![Documentation Button](https://img.shields.io/badge/doc-orange)]({{< ref "docs/Systems/Motion/Wheeled Platform" >}} "Go to Documentation")
    [![Source Button](https://img.shields.io/badge/src-grey)](https://github.com/Zakhar-the-Robot/motion_wheels "Go to Repository")
- **Diagnostics and Development (DnD) System**
    - CAN Tool Unit
    [![Source Button](https://img.shields.io/badge/src-grey)](https://github.com/Zakhar-the-Robot/tools_hardware "Go to Repository")

The main Node is the Brain Unit. Others are Secondary. Each Secondary periodically sends a special message so the Main Node knows that the Secondary is still connected to the network.

As it was told each Node has a unique DeviceID:

<img src="index_devices.svg" width="600">

## Message Content

WIP

<!-- ### The Face Module

The module represents a display with a preloaded set of facial expressions.

#### FM - Registers

|Address    |Name   |Type       |Commentary |
|-          |-      |-          |-          |
|0x00       |CMD    | R/W       |Command register. The device is reading commands from here|
|0x01       |MODE   | RO        |The Mode register|

#### FM - Commands

|Name   |Code  (ASCII)  |Commentary |
|-      |-              |-          |
|CALM   |0x30 (0)       |           |
|BLINK  |0x31 (1)       |           |
|ANGRY  |0x32 (2)       |           |
|HAPPY  |0x33 (3)       |           |
|SAD    |0x34 (4)       |           |

#### FM - Source code

[https://github.com/an-dr/zakhar-face-module](https://github.com/an-dr/zakhar-face-module) -->

<!-- ### The Moving Platform

It is a platform with two wheels rotating by DC motors. The platform also carries a positional sensor.

#### MP - Registers

|Address    |Name           |Type       |Commentary |
|-          |-              |-          |-          |
|0x00       |CMD            | R/W       |Command register. The device is reading commands from here|
|0x01       |ARG            | R/W       |Optional argument of the command|
|0x02       |MODE           | RO        |The Mode register|
|0x03       |SPEED          | RO        |Current speed mode (0-3)|
|0x04       |ANGLE_X_S      | RO        |Sing of the angle for X (0,1)|
|0x05       |ANGLE_X        | RO        |THe value of the X angle (0-180)|
|0x05       |ANGLE_Y_S      | RO        |Sing of the angle for Y (0,1)|
|0x06       |ANGLE_Y        | RO        |THe value of the Y angle (0-180)|
|0x07       |ANGLE_Z_S      | RO        |Sing of the angle for Z (0,1)|
|0x08       |ANGLE_Z        | RO        |THe value of the Z angle (0-180)|

#### MP - Commands

|Name           |Code (ASCII)   |Commentary                                 |
|-              |-              |-                                          |
|FORWARD        |0x77 (w)       |move                                       |
|BACKWARD       |0x73 (s)       |move                                       |
|LEFT           |0x61 (a)       |move, accepts an argument in degrees       |
|RIGHT          |0x64 (d)       |move, accepts an argument in degrees       |
|SHIVER         |0x71 (q)       |trembling during a second                  |
|STOP_KB        |0x20 ( )       |stop moving                                |
|STOP           |0xA0           |stop moving                                |
|SPEED0         |0x30 (0)       |set the speed mode                         |
|SPEED1         |0x31 (1)       |set the speed mode                         |
|SPEED2         |0x32 (2)       |set the speed mode                         |
|SPEED3         |0x33 (3)       |set the speed mode                         |
|MPU_CALIBRATE  |0x63 (c)       |recalibrate the positioning sensor         |
|TEST           |0x74 (t)       |used for testing purposes                  |

#### MP: Source code

[https://github.com/an-dr/zakhar_platform](https://github.com/an-dr/zakhar_platform) -->

<!-- ### The Sensor Platform

The platforms has three distance sensors and a light sensor

#### SP - Registers

|Address    |Name           |Type       |Commentary |
|-          |-              |-          |-          |
|0x00       |CMD            | R/W       |Command register. The device is reading commands from here|
|0x01       |ARG            | R/W       |Optional argument of the command|
|0x02       |DIST_L         | RO        |Value of the left distance sensor in cm|
|0x03       |DIST_C         | RO        |Value of the central distance sensor in cm|
|0x04       |DIST_R         | RO        |Value of the right distance sensor in cm|
|0x05       |LIGHT_HI       | RO        |Value of the light sensor, higher part. The less the brighter|
|0x06       |LIGHT_LO       | RO        |Value of the light sensor, lower part. The less the brighter|

#### SP - Commands

Not implemented

#### SP: Source code

[https://github.com/an-dr/zakhar_sensors](https://github.com/an-dr/zakhar_sensors)


Some of Units has a wireless interface for development purposes. -->
