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

## Relative Motion Between Two Space Objects

### Relative Position vector

Consider two objects:
- YPSAT (active satellite)
- A debris object

Their position vectors are: $r_Y(t), r_D(t)$

The relative position vector is defined as:

$$
    \rho(t) = r_D(t) - r_Y(t)
$$

This vector points from YPSAT to the debris object

### Relative Distance (Range)

The physical distance between the two objects is obtained by taking the magnitude (Euclidean norm) of the relative position vector:

$$
    d(t) = ||\rho(t)|| = \sqrt{\rho_x^2 + \rho_y^2 + \rho_z^2}
$$

This distance varies with time as both objects move along their respective orbits.

## Time of Closest Approach (TCA)

As the satellite and debris approach each other, the distance d(t) decreases, reaches a minimum value, and then increases again. The instant at which this minimum distance occurs is called the Time of Closest Approach (TCA)

Mathematically, the TCA is defined as the time at which the rate of change of distance with respect to time is zero:

$$
\left. \frac{d \, d(t)}{dt} \right|_{t = t_{TCA}} = 0
$$

### Miss Distance

The miss distance is the minimum separation distance at TCA:

$$
    d_{min} = d_{t_{TCA}}
$$

This value is the primary metric used to assess collision risk in distance based conjunction analysis.

## Orbital velocities and Collision Risk in LEO

Typical orbital characteristics in LEO:
- Orbital velocity: ~7.5 km/s
- Relative velocity during conjunctions: 10 - 15 km/s

At such velocities, even a millimeter sized object object enoigh kinetic energy to cause severe damage. Therefore, collision avoidance is neccessary even when the predicted miss distance is on the order of hundreds of meters.

## Collision Avoidance Maneuver Concept

### Fundamental Principle

A collision occurs only if:
- Two objects occupy the same location
- At the same time

Thus, collision avoidance does not require physically moving far away from the debris. Instead, it requires the satellite's motion such that it arrives at the conjunction point at a different time.

## Velocity Change and Orbit Modification

### Velocity vector

The velocity of a satellite is defined as the time derivative of its position vector:

$$
    \mathbf{v}(t) = \frac{dx}{dt}
$$

Velocity determines both:
- The shape of the orbit
- The timing of motion along the orbit

### Manuever ($\Delta V$)

A maneuver is modeled as an impulsive change in velocity:

$$
    \mathbf{v}^+ = \mathbf{v}^- + \Delta V
$$

where, 
- $\mathbf{v}^-$ is velocity before maneuver 
- $\mathbf{v}^+$ is velocity after maneuver
- $\Delta V$ is the applied velocity change

## Along-Track Maneuvers

### Along-Track Direction

The along-track direction is the direction of motion of the satellite. The corresponding unit vector is:

$$
    \hat{t} = \frac{\mathbf{v}}{||\mathbf{v}||}
$$

### Effect of Along-Track $\Delta V$

Applying a $\Delta V$ in the along-track direction:
- Changes the  orbital energy
- Modifies the semi-major axis
- Alters the satellite's mean motion

This causes the satellite to drift forward or backward along its orbit over time.

