# AE520 Spacecraft Attitude Dynamics and Controls Resources

This repository provides MATLAB resources for SDSU's AE520 Spacecraft Attitude Dynamics and Controls class. It contains helper functions, worked-example scripts, and an interactive algorithm chooser intended to make common orbital mechanics, attitude, and coordinate-transformation calculations easier to run and review.

## Repository contents

### Local AE520 algorithm files

| File | Purpose |
| --- | --- |
| `Algorithm_Chooser.m` | Interactive MATLAB script that prompts the user for an algorithm number, collects the required inputs, runs the selected algorithm, prints the results, and optionally loops to another algorithm. |
| `Algorithm_3_3.m` | Solves the universal Kepler equation for the universal anomaly `X` using Newton's method and returns the Stumpff functions `C` and `S`. This is used by `Algorithm_3_4.m`. |
| `Algorithm_3_4.m` | Propagates an initial position and velocity vector through a time interval using universal variables and Lagrange `f` and `g` coefficients. Returns the propagated position, velocity, and trajectory type. |
| `Algorithm_4_1.m` | Converts an inertial position vector into declination and right ascension. |
| `Algorithm_4_3.m` | Extracts Euler angles `alpha`, `beta`, and `gamma` from a direction cosine matrix. |
| `Algorithm_4_4.m` | Extracts yaw, pitch, and roll angles from a direction cosine matrix. |
| `Parallel_Axis_Theorem.m` | Standalone script that computes a mass-center inertia matrix using the parallel axis theorem and evaluates the moment of inertia about a specified direction vector. This file is not linked to the algorithm chooser. Run it directly when needed. |

## Appendix D MATLAB file list

The following files are the Appendix D MATLAB resources shown in the provided grid. These are reference routines and textbook example scripts. They are not automatically called by `Algorithm_Chooser.m` unless you explicitly add them to the chooser logic.

| File | Purpose |
| --- | --- |
| `atan2d_0_360.m` | Computes a quadrant-aware inverse tangent angle in degrees and normalizes the result to the 0 to 360 degree range. |
| `atmosphere.m` | Provides atmospheric properties or density estimates as a function of altitude for orbit and drag-related calculations. |
| `bisect.m` | General bisection-method root solver for scalar nonlinear equations. |
| `coe_from_sv.m` | Converts a position and velocity state vector into classical orbital elements. |
| `dcm_from_q.m` | Converts a quaternion into a direction cosine matrix. |
| `dcm_to_euler.m` | Converts a direction cosine matrix into Euler angles. |
| `dcm_to_ypr.m` | Converts a direction cosine matrix into yaw, pitch, and roll angles. |
| `Example_1_18.m` | Driver script for textbook Example 1.18. |
| `Example_1_19.m` | Driver script for textbook Example 1.19. |
| `Example_1_20.m` | Driver script for textbook Example 1.20. |
| `Example_2_16.m` | Driver script for textbook Example 2.16. |
| `Example_2_18.m` | Driver script for textbook Example 2.18. |
| `Example_3_02.m` | Driver script for textbook Example 3.02. |
| `Example_3_05.m` | Driver script for textbook Example 3.05. |
| `Example_3_06.m` | Driver script for textbook Example 3.06. |
| `Example_3_07.m` | Driver script for textbook Example 3.07. |
| `Example_4_01.m` | Driver script for textbook Example 4.01. |
| `Example_4_07.m` | Driver script for textbook Example 4.07. |
| `Example_5_01.m` | Driver script for textbook Example 5.01. |
| `Example_5_02.m` | Driver script for textbook Example 5.02. |
| `Example_5_04.m` | Driver script for textbook Example 5.04. |
| `Example_5_06.m` | Driver script for textbook Example 5.06. |
| `Example_5_10.m` | Driver script for textbook Example 5.10. |
| `Example_5_11.m` | Driver script for textbook Example 5.11. |
| `Example_7_01.m` | Driver script for textbook Example 7.01. |
| `Example_7_02.m` | Driver script for textbook Example 7.02. |
| `Example_7_03.m` | Driver script for textbook Example 7.03. |
| `Example_8_07.m` | Driver script for textbook Example 8.07. |
| `Example_8_08.m` | Driver script for textbook Example 8.08. |
| `Example_10_01.m` | Driver script for textbook Example 10.01. |
| `Example_10_02.m` | Driver script for textbook Example 10.02. |
| `Example_10_6.m` | Driver script for textbook Example 10.6. |
| `Example_10_09.m` | Driver script for textbook Example 10.09. |
| `Example_10_11.m` | Driver script for textbook Example 10.11. |
| `Example_10_12.m` | Driver script for textbook Example 10.12. |
| `Example_11_26.m` | Driver script for textbook Example 11.26. |
| `Example_13_03.m` | Driver script for textbook Example 13.03. |
| `f_and_g.m` | Computes Lagrange `f` and `g` coefficients used to propagate a state vector. |
| `f_and_g_ta.m` | Computes Lagrange `f` and `g` coefficients using a change in true anomaly. |
| `fDot_and_gDot.m` | Computes the time derivatives of the Lagrange `f` and `g` coefficients. |
| `fDot_and_gDot_ta.m` | Computes derivatives of the Lagrange `f` and `g` coefficients using a change in true anomaly. |
| `gauss.m` | Implements Gauss' angles-only orbit determination method. |
| `gibbs.m` | Implements Gibbs' method for orbit determination from three position vectors. |
| `ground_track.m` | Computes or plots the ground track of an orbiting spacecraft. |
| `heun.m` | Implements Heun's predictor-corrector method for numerical integration. |
| `integrate_thrust.m` | Numerically integrates a trajectory with applied thrust or finite-burn acceleration. |
| `interplanetary.m` | Supports interplanetary transfer calculations, typically combining planetary state vectors with Lambert solutions. |
| `J0.m` | Computes the Julian day number at 0 hours Universal Time for a given date. |
| `kepler_E.m` | Solves Kepler's equation for elliptical orbits using eccentric anomaly. |
| `kepler_H.m` | Solves Kepler's equation for hyperbolic orbits using hyperbolic anomaly. |
| `kepler_U.m` | Solves the universal Kepler equation using universal variables. |
| `lambert.m` | Solves Lambert's problem to determine transfer velocities between two position vectors over a specified time of flight. |
| `los.m` | Computes a line-of-sight vector for observation geometry. |
| `LST.m` | Computes local sidereal time. |
| `lunar_position.m` | Computes the Moon's approximate geocentric position. |
| `month_planet_names.m` | Utility routine for mapping month and planet numbers to names. |
| `orbit.m` | General orbit calculation or plotting routine used by example scripts. |
| `planet_elements_and_sv.m` | Computes planetary orbital elements and state vectors. |
| `q_from_dcm.m` | Converts a direction cosine matrix into a quaternion. |
| `quat_rotate.m` | Rotates a vector using quaternion operations. |
| `ra_and_dec_from_r.m` | Converts a position vector into right ascension and declination. |
| `rkf1_4.m` | Performs one Runge-Kutta-Fehlberg integration step with first-through-fourth-order terms. |
| `rkf45.m` | Adaptive Runge-Kutta-Fehlberg 4(5) numerical integrator. |
| `rva_relative.m` | Computes relative position, velocity, and acceleration quantities for relative motion analysis. |
| `rv_from_observe.m` | Computes a position and velocity vector from observation data. |
| `rv_from_r0v0.m` | Propagates a state vector from an initial position and velocity over a specified time interval. |
| `rv_from_r0v0_ta.m` | Propagates a state vector from an initial position and velocity through a specified true-anomaly change. |
| `simpsons_lunar_ephemeris.m` | Provides a lunar ephemeris calculation based on Simpson's method or tabulated lunar motion approximations. |
| `solar_position.m` | Computes the Sun's approximate geocentric position and related pointing quantities. |
| `stumpC.m` | Computes the Stumpff `C(z)` function used in universal-variable orbit propagation. |
| `stumpS.m` | Computes the Stumpff `S(z)` function used in universal-variable orbit propagation. |
| `sv_from_coe.m` | Converts classical orbital elements into position and velocity state vectors. |
| `twobody3d.m` | Defines the three-dimensional two-body equations of motion for numerical integration. |

## Running the algorithm chooser

1. Open MATLAB.
2. Set the current folder to this repository, or add the repository folder to the MATLAB path.
3. Make sure the chooser and the algorithm files are in the same folder:
   - `Algorithm_Chooser.m`
   - `Algorithm_3_3.m`
   - `Algorithm_3_4.m`
   - `Algorithm_4_1.m`
   - `Algorithm_4_3.m`
   - `Algorithm_4_4.m`
4. In the MATLAB Command Window, run:

```matlab
Algorithm_Chooser
```

5. When prompted, enter the algorithm number you want to run.

| Input | Runs | Notes |
| --- | --- | --- |
| `3.4` | `Algorithm_3_4.m` | Propagates `r0_vec` and `v0_vec` through `delta_t`. Internally calls `Algorithm_3_3.m`. |
| `4.1` | `Algorithm_4_1.m` | Converts `r_vec` into declination and right ascension. |
| `4.3` | `Algorithm_4_3.m` | Converts a direction cosine matrix into Euler angles. |
| `4.4` | `Algorithm_4_4.m` | Converts a direction cosine matrix into yaw, pitch, and roll. |
| `0` | Exit | Stops the chooser. |

The chooser currently sets Earth's gravitational parameter as:

```matlab
global mu
mu = 3.986E5; % km^3 / s^2
```

Use units that are consistent with this value, such as kilometers, seconds, and kilometers per second for orbital propagation.

## Running the parallel axis theorem script

`Parallel_Axis_Theorem.m` is a separate standalone script. It is not connected to `Algorithm_Chooser.m` and will not appear as a chooser option unless that feature is added later.

To run it, open MATLAB in the repository folder and type:

```matlab
Parallel_Axis_Theorem
```

Edit the mass values, point coordinates, and direction vector directly inside `Parallel_Axis_Theorem.m` before running it for a different system.

## Notes for future updates

To add another algorithm to the chooser, copy the template block at the bottom of `Algorithm_Chooser.m`, create a new `elseif Algo == x.x` section, collect the needed inputs, call the appropriate function, and print the results.
