# Distance Based Collision Avoidance Maneuver for Low Earth Orbit Satellites

## Introduction to the Collision Avoidance Problem

Satellites operating in Low Earth Orbit (LEO) share their orbital environment with thousands of active satellites and millions of debris objects. Due to the high orbital velocities involved, even a small object can cause catastrophic damage if a collision occurs.

For an operational satellite such as YPSAT, ensuring safe separation from other space objects throughout its mission lifetime is a critical requirement. This leads to the concept of conjuction analysis and Collision Avoidance Maneuvers (CAMs).

A collision avoidance maneuver aims to modify the satellite's trajectory such that the minimum separation distance between two objects is increased beyond a safety threshold.

## Reference Frames and Position Representation

### Earth - Centered Inertial (ECI) Frame

Orbital motion is typically described in an Earth-Centered Inertial (ECI) reference frame, where:

- The origin is at the center of the Earth
- Axes are fixed relative to inertial space
- Earth's rotation is not included.

In this frame, the position if a satellite is represented by a position vector:

$$
r(t) = 
\begin{bmatrix}
x(t)  \\\\
y(t)   \\\\
z(t)
\end{bmatrix}
$$

where:
- x,y,z are cartesian coordinates
- t is time