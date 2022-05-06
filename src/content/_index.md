---
title: Main
---

<img src="logo-light.png" width="250"/>

Zakhar is a robotics UX project. The main aim is to decrease the anxiety of users interacting with a robot.

To achieve this the robot uses life concepts for its program architecture: instincts, emotions, ego, etc.

- [Facebook](https://www.facebook.com/groups/zakhar-the-robot)
- [Instagram](https://www.instagram.com/zakhar_the_robot/)
- [Blog (hackaday.io)](https://hackaday.io/project/171888-zakhar-the-robot)
<!-- - [Project's how-to on hackster.io (WIP)](https://www.hackster.io/an-dr/zakhar-the-robot-0d8744) -->
## About

**Assumed**: the humans can interact the most effective and seamless with other living creatures

**Suggested**: to develop a robot's program structure in the way when basics of its logic are understandable from the robot's behavior. The behavior should mimic the animal one (as the human is an animal too).

Suggested to split the program into three parts:

- Conscious
- Unconscious
- Reflexes

**Conscious** represents simple intentions: move forward, sleep, run away, search something, etc.

**Unconscious** is responsible to solve how to realize those intentions: what to do for moving, how to behave if looking something etc.

**Reflexes** are small algorithms that can monopolize Unconscious from Conscious in some very explicit situations. E.g. panic and fear if something breaking, convulsions if robot stuck and can't move as the conscious tells.

An article with detailed explanations and a demonstration:
- ["Robot with the Conscious: Imitating animal behavior for reducing user's anxiety"](https://blog.agramakov.me/posts/2020-05-29-robot-with-the-conscious/)
## Structure

### Hardware

Zakhar consists of 4 devices:

- Brain Platform ([source](https://github.com/Zakhar-the-Robot/brain))
- Face Module ([source](https://github.com/an-dr/zakhar-face-module))
- Moving Platform ([source](https://github.com/Zakhar-the-Robot/motors))
- Sensor Platform ([source](https://github.com/Zakhar-the-Robot/sensors))

Each platform has it's own battery and can work standalone.


### Repositories

The hugest parts of the project called Gears. Currently there are 3 gears that divided into smaller parts:

- [io](https://github.com/Zakhar-the-Robot/io) - interaction
    - [zakhar-face-module: Zakhar's part which is responsible for facial expressions](https://github.com/an-dr/zakhar-face-module)
    - [sensors: Sensors implementation for the Zakhar Project](https://github.com/Zakhar-the-Robot/sensors)
- [brain](https://github.com/Zakhar-the-Robot/brain) - thinking
    - [zakharos_core: Software core (ROS-based) for the Zakhar project](https://github.com/an-dr/zakharos_core)
    - [zakhar_pycore: Base python package for the Zakhar project](https://github.com/an-dr/zakhar_pycore)
    - [zakhar_service: Software for service purposes](https://github.com/an-dr/zakhar_service)
- [motors](https://github.com/Zakhar-the-Robot/motors) - moving (ESP32-powered motorized platform)

Other related repositories:

- [zakhar_docker: Docker files with Zakhar environment](https://github.com/an-dr/zakhar_docker)
- [zakhar_faces: Zakhar's facial expressions](https://github.com/an-dr/zakhar_faces)
- [zakhar_kicadlib: Library with components for Zakhar project](https://github.com/an-dr/zakhar_kicadlib)
- [zakhar_proto: Repository for experiments and prototyping. Part of the Zakhar project](https://github.com/an-dr/zakhar_proto)
- [r_giskard: Small project for experiments with unconditioned and conditioned reflexes](https://github.com/an-dr/r_giskard)

## Related articles

- [2020/05/29 - Robot with the Conscious: Imitating animal behavior for reducing user’s anxiety - technical_](https://blog.agramakov.me/2020/05/29/robot-with-the-conscious/)
- [2019/06/01 - Zakhar’s Concept – technical_](https://blog.agramakov.me/2019/06/01/zakhars-concept/)
- [2019/05/05 - Zakhar relaunch: Zakha_ros – technical_](https://blog.agramakov.me/2019/05/05/zakhar-relaunch-zakha_ros/)
- [2019/01/10 - Zakhar the Robot – technical_](https://blog.agramakov.me/2019/01/10/zakhar-the-robot/)

## Milestones

There are two types of milestones, with and without demonstration. Demonstrations intended to show important to the project features followed by an article, milestones without demonstrations mainly focused on technical part of the project

1. ✅ [Reptile Demo](https://github.com/an-dr/zakhar/releases/tag/reptile_demo) - implementing of a simple reptile instinct
    - Article: [Robot with the Conscious: Imitating animal behavior for reducing user’s anxiety](https://blog.agramakov.me/2020/05/29/robot-with-the-conscious/)
2. ✅ [Zakharos](https://github.com/an-dr/zakhar/releases/tag/zakharos) - moving the core to the [ROS](https://www.ros.org/)
3. 🟧 [ZakharCAN](https://github.com/users/an-dr/projects/3/views/1) - Replace I2C with CAN bus protocol. Construction and stability improvements.
4. ⬜ [Emotions Demo](https://github.com/users/an-dr/projects/4/views/1) - emotions and reflexes
5. ⬜ [ZakhaR.Giskard](https://github.com/users/an-dr/projects/5/views/1) (Note: R.Giskard is a robot from novels by I.Asimov which could control human's emotions) - Further development of using conditioned and unconditioned responses
6. ⬜ Animal Demo - showing the robot to users and collecting responses for making conclusions of this iteration

## Attention: DEVELOPERS WANTED

The project is ambitious, and I cannot move it that fast as I want to. If you are as interested in robotics as I am, let's try to work together. I'm confident that we will develop something unique.

The project covers many different areas and programming languages, including:

- 3D modeling (for simulation)
- 3D printing (for the robot itself)
- C / C ++ development (embedded: Arduino, ESP32, STM32; hi-level: Linux, Robot Operating System - ROS)
- Computer vision (image recognition, especially for indoor navigation)
- Hardware design (robot modules)
- Python development (Robot Operating System - ROS)

Please look at the [list of repositories](#repositories) and non-green [milestones](#milestones) below, see the issues, and take something if you want. If you want to participate but do not know where to start, create an issue in this repository, and we will figure this out.

**Any volunteer participation will be appreciated!**

## License

This work is licensed under the terms of the GPLv3 license.

For a copy, see: [LICENSE](LICENSE)

- site:    https://agramakov.me
- e-mail:  mail@agramakov.me

## Support

If you will decide to support me, you can send some pretty words on my email or just use the link

[![Donate](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://paypal.me/4ndr/1eur)

Any amount will motivate me to develop the project. Thanks in advance!

---

[Documentation Sources](https://github.com/zakhar-the-robot/doc/)