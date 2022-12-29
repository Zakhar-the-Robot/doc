---
title: Main
---

<img src="logo-light.png" width="250"/>

The Zakhar project combines our understanding of biology, psychology, and animal behavior with robotics to create a unique and intuitive approach to creating a robot companion for pets and, ultimately, for humans.

- [Blog (hackaday.io)](https://hackaday.io/project/171888-zakhar-the-robot)
- [Instagram](https://www.instagram.com/zakhar_the_robot/)
- [Facebook](https://www.facebook.com/groups/zakhar-the-robot)
<!-- - [Project's how-to on hackster.io (WIP)](https://www.hackster.io/an-dr/zakhar-the-robot-0d8744) -->

## About

The Zakhar project is a unique and innovative approach to robotics and human-robot interaction that utilizes our understanding of animal behavior and the human and animal brain to create a robot companion for dogs and cats. The ultimate goal of the project is to create a working product that can be a basis to eventually create a human companion.

The robot's operating system is designed to mimic the way the human and animal brain functions, with three main programs:

- consciousness
- instincts
- reflexes

The **consciousness** program is responsible for higher cognitive functions such as decision-making and problem-solving, and is similar to the prefrontal cortex in the human brain. 

The **instincts** program consists of sophisticated behavior patterns that can suppress the consciousness and take control of the robot's body in certain situations, much like the amygdala in the human brain which is responsible for emotional responses and the "fight or flight" instinct. 

The **reflexes** program consists of simple body responses to external stimuli, similar to the spinal cord in the human body which is responsible for reflexive responses to stimuli.

The **instincts** program interacts with the **consciousness** program through the Emotion Core, a piece of software that simulates the endocrine system and represents a table of hormones that can be affected by sensor data and by the **consciousness** and **instincts** programs. The endocrine system in the human and animal body is responsible for producing and secreting hormones that regulate various bodily functions and can affect behavior and emotion. By simulating this system, the robot is able to experience a range of “emotions” and behaviors that are familiar to its human and animal users.

This familiarity with emotion-controlled behavior in theory should provide a simple and understandable user experience for all time of animal users (pets and human beings). The project aims to utilize this animal-like user experience to create a final product: a robot companion for cats and dogs, with two sets of instincts and main programs tailored for interaction with each species. The physical shape of the product is currently being considered and will be developed in future development stages.

The project is open source and well-documented and published under the GPL3 license.

## Some articles

- [2020/05/29 - Robot with the Conscious: Imitating animal behavior for reducing user’s anxiety - technical_](https://blog.agramakov.me/2020/05/29/robot-with-the-conscious/)
- [2019/06/01 - Zakhar’s Concept – technical_](https://blog.agramakov.me/2019/06/01/zakhars-concept/)
- [2019/05/05 - Zakhar relaunch: Zakha_ros – technical_](https://blog.agramakov.me/2019/05/05/zakhar-relaunch-zakha_ros/)
- [2019/01/10 - Zakhar the Robot – technical_](https://blog.agramakov.me/2019/01/10/zakhar-the-robot/)

## Structure

Zakhar consists of 4 systems:

- Brain
- IO (In/Out)
- Motion
- Diagnostics and Development

Each system consists of units - standalone devices capable of working into a common communication network. Each unit is a part of some system. [Read more about Zakhar Systems]({{< ref "docs/Systems" >}})

## Roadmap

There are two types of milestones, with and without demonstration. Demonstrations intended to show important to the project features followed by an article, milestones without demonstrations mainly focused on technical part of the project

1. ✅ [Reptile Demo](https://github.com/zakhar-the-robot/zakhar/releases/tag/reptile_demo) - implementing of a simple reptile instinct
    - Article: [Robot with the Conscious: Imitating animal behavior for reducing user’s anxiety](https://blog.agramakov.me/2020/05/29/robot-with-the-conscious/)
2. ✅ [Zakharos](https://github.com/zakhar-the-robot/zakhar/releases/tag/zakharos) - moving the core to the [ROS](https://www.ros.org/)
3. 🟧 [ZakharCAN](https://github.com/orgs/Zakhar-the-Robot/projects/2) - Replace I2C with CAN bus protocol. Construction and stability improvements.
4. ⬜ Emotions Demo - emotions and reflexes
5. ⬜ ZakhaR.Giskard (Note: R.Giskard is a robot from novels by I.Asimov which could control human's emotions) - Further development of using conditioned and unconditioned responses
6. ⬜ Animal Demo - showing the robot to users and collecting responses for making conclusions of this iteration

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
