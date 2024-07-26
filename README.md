# Fuzzy Logic Controller Design and Optimization Techniques Comparison

## Overview

This project is divided into two main parts:

### Part 1: Design and Implementation of the Fuzzy Logic Controller (FLC)

#### 1. Design and Implementation
- Created a demonstrable FLC using MATLAB's Fuzzy Logic Toolbox.
- Implemented the FLC with various components such as fuzzy sets, membership functions, fuzzy rules, inference mechanism, and defuzzification method.
- Documented the implementation with diagrams and screenshots.

#### 2. Design Decisions
- Selected appropriate fuzzy sets and membership functions.
- Chose fuzzy rules to define the system's behavior.
- Used the Mamdani inference mechanism.
- Applied the centroid method for defuzzification.
- Justified these choices with supporting diagrams and screenshots.

#### 3. Output Analysis
- Analyzed the controller's output behavior, showing rule activation and controller output.
- Generated control surface plots to demonstrate the controller's performance in various operational scenarios.

### Part 2: Comparison of Optimization Techniques on CEC'2005 Functions

#### 1. Function Selection
- Chose three benchmark functions from the CEC’2005 suite.

#### 2. Optimization Techniques
- Compared the performance of three optimization algorithms: Genetic Algorithms (GA), Particle Swarm Optimization (PSO), and Simulated Annealing (SA).
- Tested each algorithm on the selected functions for dimensions D=2 and D=10.

#### 3. Performance Evaluation
- Ran each algorithm 15 times and recorded the best, worst, and average performance, including standard deviation.
- Documented the results with convergence graphs and provided MATLAB code for the functions and optimization algorithms.

## Results

### Function F2

#### 2 Dimensions
- **Particle Swarm**: Best Value = 0.000000, Avg Evaluations = 2497
- **Simulated Annealing**: Best Value = 0.000000, Avg Evaluations = 1005
- **Genetic Algorithm**: Best Value = 0.000003, Avg Evaluations = 4032

#### 10 Dimensions
- **Particle Swarm**: Best Value = 0.000000, Avg Evaluations = 10936
- **Simulated Annealing**: Best Value = 0.000000, Avg Evaluations = 5470
- **Genetic Algorithm**: Best Value = 0.001719, Avg Evaluations = 16619

### Function F3

#### 2 Dimensions
- **Particle Swarm**: Best Value = 4367.552160, Avg Evaluations = 995
- **Simulated Annealing**: Best Value = 4431.059431, Avg Evaluations = 1031
- **Genetic Algorithm**: Best Value = 4496.493817, Avg Evaluations = 1064

#### 10 Dimensions
- **Particle Swarm**: Best Value = 4423.090395, Avg Evaluations = 12120
- **Simulated Annealing**: Best Value = 4536.393256, Avg Evaluations = 6105
- **Genetic Algorithm**: Best Value = 4553.785186, Avg Evaluations = 18532

## Summary

In this experiment, we designed and implemented a fuzzy logic controller (FLC) using MATLAB, justifying our design choices and analyzing the controller's output behavior. We also compared the performance of three optimization techniques (GA, PSO, SA) on three benchmark functions from the CEC'2005 suite, evaluating their efficiency in different dimensions. The results showed that Particle Swarm Optimization often achieved the best values and was efficient in evaluations, Simulated Annealing excelled in specific scenarios with fewer evaluations, and Genetic Algorithms, despite higher average evaluations, performed well across different scenarios.

## How to Run

### Part 1: Fuzzy Logic Controller
1. Open MATLAB and load the Fuzzy Logic Toolbox.
2. Follow the provided documentation and diagrams to replicate the FLC setup.
3. Run the FLC and observe the output behavior and control surface plots.

### Part 2: Optimization Techniques Comparison
1. Download the CEC'2005 benchmark functions from the provided links.
2. Run the optimization algorithms (GA, PSO, SA) on the selected functions for dimensions D=2 and D=10.
3. Record the performance metrics and compare the results.

## References

- [MATLAB Fuzzy Logic Toolbox](http://uk.mathworks.com/videos/getting-started-with-fuzzy-logictoolbox-part-1-68764.html)
- [Fuzzylite](http://www.fuzzylite.com)
- [Juzzy](http://juzzy.wagnerweb.net)
- [CEC'2005 Benchmark Functions](http://www.cmap.polytechnique.fr/~nikolaus.hansen/Tech-Report-May-30-05.pdf)
