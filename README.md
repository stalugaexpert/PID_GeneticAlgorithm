# Finding the optimal PID controller settings using a genetic algorithm.
 An application that finds the optimal PID controller settings with the use of a genetic algorithm.
 
## General

The program determines the PID controller parameters for the second-order object using the genetic algorithm. It allows to choose two selection methods - the roulette wheel method and the rank method. The program's algorithm uses elitism.

## Using
We can define the gain, time constants and an object delay. Then we have two selection methods to choose from - the roulette wheel method and the rank method. The roulette wheel method also has elitism implemented. Then we have to define the number of bits, population, simulation time and choose the stopping conditions for the algorithm - we can declare the maximum number of iterations, or simply stop the program when the objective function reaches a given value.

After completing the program, we get a graph of the decreasing target function and the designated PID controller settings. In addition, we also receive information about the properties of the object - overshoot, control time, etc.

## Sample application operation
![github1](https://user-images.githubusercontent.com/59517489/117866555-92f0ea00-b297-11eb-8a38-0b46f6c17c49.jpg)

## Summary
The operation of the program after several tests can be described as satisfactory - it gives very good results.
The created program gives an interesting reference point for tuning the regulator, we can
introduce variables of different objects into it, declare different simulation times and
different sizes of individuals, making it universal, but we can only use it
for 2nd order inertial objects - but changing this value is not a problem, we can
use any object - it is enough to slightly modify the input data of the evaluation function.

