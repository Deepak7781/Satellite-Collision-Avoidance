# Satellite Mission Definition

## Mission Type
 Earth Imaging Mission

 ---

## Mission Objective

To design and operate regionally focused Earth observation satellite that delivers high-resolution, timely, and actionable geospatial information to support agricultural productivity, urban planning, and disaster risk reduction in Tamil Nadu, thereby enabling a transition from reactive response to predictive and preventive governance.

---

## Name of the Stellite

YPSAT (Yield and Planning Satellite)

## Mission Definition

#### Epoch : March 21 2025, 12:00:00 AM
### Orbit Type

- Sun-Synchronous Orbit (SSO)
- Near circular, retrograde orbit optimized for consistent ligting and repeated coverage

#### Altitude (mean) : ~546 km

### Orbital Elements

#### Semi-major axis (a) : ~6917 km 

- Semi-major axis (a) = Mean Earth Radius + Orbital Altitude
- Mean Earth Radius = 6371 km
- Orbital Altiude = 546 km
- Semi-major axis (a) = 6371 + 546 = 6917 km

#### Eccentricity (e) : 0.001

- Earth Observation have near circular orbits. So we choose a value of 0.001

#### Inclination (i) : 97.4 $\degree$

- Earth Observation satellites have typical values of inclination in the range of 96 - 98 degrees. 
- Referring the CartoSat-2 we we choose 97.4 degrees as our inclination.

#### Right Ascension of Ascending Node ($\Omega$) : 337.5 $\degree$

Right Ascension of Ascending Node (RAAN) depends on Local Time of Ascending Node (LTAN)

For our mission we fix LTAN as 10:30 AM ensuring good lighting conditions. 

Relation between $\Omega$ and LTAN

$$
\Omega = \alpha_{⊙} + 15\degree \times (LTAN - 12)
$$

Where:
- $\Omega :$  RAAN (degrees)
- $\alpha_{⊙} :$ Right Ascension of the Sun (degrees)
- LTAN in hours
-  $15\degree$ per hour comes from Earth rotation

##### Determination of RAAN of Sun on our epoch

On March 21, Sun is at vernal equinox so $\alpha_{⊙} = 0\degree$

$$
\Omega = 0\degree + 15\degree \times (10.5 - 12)
$$

$$
\Omega = -22.5\degree
$$

RAAN is usually expressed between $0\degree$ and $360\degree$, so

$$
    \Omega = 337.5\degree
$$
