---
title: "Architecture - Phase 1"
---
# Architecture - Phase 1

## Introduction and Goals

The goal of the Phase 1 is to establish the backbone of the future architecture and the main principles of the project.

This documentation uses some parts of the [https://arc42.org](https://arc42.org) architecture documentation framework, but lacks some mandatory sections in sake of simplicity and development progress.

## Architecture Constraints

- Architecture relies on usage of Robot Operating System (ROS). It is expected that ROS will provide access to a large and relevant library of software components during the next iterations and simple communications between nodes.

## System Scope and Context

### Business Context

The business context is represented by a use case diagram. Sensors are presented as actors.

<img src="usecase.drawio.svg" alt="usecase" width="400">

### Technical Context

<img src="technical.drawio.svg" alt="technical" width="500">

## Solution Strategy

General Strategy. The architecture of the 1st Phase is built on tree main principles:

- **Reusability** - usage of existing libraries, define reliable interfaces
- **Development Convenience** - minimum mandatory tool for each component. All decisions are up to developer
- **Independency** - each component is decoupled from all others and can use it's own stack. The communication between components is made in the microservice manner and relies on minimalistic interfaces.

Use case leads to the following functional requirements:

| Requirement                   | Implementation Strategy                                                                                                                                                      | Motivation                                                                                                                                                                                                                                                                           |
| ----------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| 1. Process Audio Input        | Use a microphone through the OS driver with the positional<br />data to locate the sound source. The positional data should <br />accessible through an abstract interface. | The simplest approach. Positional abstract interface is needed to do<br />the development without having accelerometer connected to the <br />desktop PC. Also the devices are very different and we will use the <br />interface to unify the communication with any accelerometer. |
| 2. Produce Audio Output       | The output device is a headphones controlled by a<br />cross-platform hi level library.                                                                                      | Enough as a PoC. Use existing hardware and libraries.                                                                                                                                                                                                                                |
| 3. Process Video Input        | Camera is an input device. The signal is used for the pet<br />recognition. Heavy processing<br />can be done externally                                                     | The robot should not care powerful computation capacity at this<br />phase. The simpler to implement solution is the better                                                                                                                                                          |
| 4. Move in Space              | Use the simplest movement system with an accelerometer                                                                                                                       | This combination should be enough to provide minimum awareness<br />about the positioning                                                                                                                                                                                            |
| 5. Manual User Control        | Implementation through ROS                                                                                                                                                   | Requires minimum efforts as already implemented<br />in publicly available components                                                                                                                                                                                                |
| 6. Turn On/Off                | Will be implemented as a physical switch                                                                                                                                     | A physical switch is the simplest and the most reliable solution                                                                                                                                                                                                                    |
| 7. Making Autonomous Decision | All the data (Audio, Video, Positional) is provided to<br />the ROS interface of the Business Logic component.<br />The logic is simple and mainly verifies interfaces.      | The purpose of the Phase is to make everything work together.<br />There is no need in comp[lex decision algorithms right now.                                                                                                                                                      |

## Deployment View

The technical context is represented by a UML deployment diagram.

<img src="deployment.drawio.svg" alt="deployment" width="800">

## Building Block View
