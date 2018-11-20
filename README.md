# Smart_Rockets
genetic algorithm for optimal paths around obstacles - Processing Sketch

This is my version of a genetic algorithm. It's working by creating a generation of "Smart Rockets" with initial random parameters.
These rockets accelerate (randomly) in a very simple physics simulation. While the rockets are moving, a fitness is calculated.
This fitness is just 1/distance of each rocket to the goal.

After the simulation has run, a new generation of rockets is formed. This generation receives it's parameters from the previous generation.
The "fittest" rockets have the highest chance to inherit their traits to a new generation.

This process produces a path through the obstacles, and the mean fitness should be increasing.


This was done in a few hours, so there are a lot of improvements possible.
Inspired by Daniel Shiffman.
