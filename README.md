# SD-WAN Performance Analysis using JMT

This repository contains Java Modelling Tools (JMT) simulations for evaluating the performance of SD-WAN controllers and vEdge routers, based on the models described in the project paper.

## Project Structure

* **/bin**: Contains the `jmt.jar` executable.
* **/models**: Contains the `.jsimg` simulation files.
    * `MM1.jsimg`: Model for the SD-WAN Controller (vSmart).
    * `MH21.jsimg`: Model for the vEdge Router using Hyper-exponential distribution.
* `run.sh`: Launch script for Linux users.
* `run.bat`: Launch script for Windows users.

## Setup

### Prerequisites
* Java Runtime Environment (JRE) 8 or higher must be installed on your system.

### How to Run
* **Linux/macOS:** Open a terminal in the root directory and run `./run.sh`.
* **Windows:** Double-click the `run.bat` file.

Once JMT opens, click on **JSIMgraph** and open the models located in the `/models` directory.

## Model Configurations

To ensure the simulation results align with the graphical output of the reference paper, the following parameters are used:

### 1. SD-WAN Controller ($M/M/1$)
* **Distribution:** Exponential
* **Arrival Rate ($\lambda$):** 3.52 pps
* **Service Rate ($\mu$):** 117.33 pps

### 2. vEdge Router ($M/H_2/1$)
* **Distribution:** Hyper-exponential (Moments)
* **Mean Service Time:** 0.02s (Updated to 50 pps to match the paper's graphical curves)
* **Squared Coefficient of Variation ($C_v^2$):** 2.18

## Running Simulations
To reproduce the performance curves:
1.  Open the model in JSIMgraph.
2.  Go to the **What-If Analysis** menu.
3.  Set the Arrival Rate ($\lambda$) range from **1.0 to 2.0** with a step of **0.1**.
4.  Run the simulation and view the results in the **Plots** tab.