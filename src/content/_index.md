---
title: Main
---

<img src="logo-light.png" width="250"/>

⚠️   [**DEVELOPERS WANTED!** Read the Page for Developers]({{< ref "For_Developers" >}}) ⚠️

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

## More articles

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
