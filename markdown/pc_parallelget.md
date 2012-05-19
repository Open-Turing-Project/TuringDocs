
# PC.ParallelGet

## Syntax
**PC.ParallelGet** (_port_ : **int**) : **nat1**

## Description
The **PC.ParallelGet** function is used to read the value of certain pins on a parallel port. The port is specified with the _port_ parameter which can have the value 1, 2 or 3 corresponding to "LPT1", "LPT2" and "LPT3". This procedure can be used to control robots and peripherals.


## Example
This program reads and prints the values of the five data pins of the PC's parallel port.

        % Read in the set of pin values from LPT1
        const val : int := PC.ParallelGet (1)   
        put "Pin 10 is: ", (val div 64) mod 2
        put "Pin 11 is: ", (val div 128) mod 2
        put "Pin 12 is: ", (val div 32) mod 2
        put "Pin 13 is: ", (val div 16) mod 2
        put "Pin 15 is: ", (val div 8) mod 2
## Details
The five pins that are used for parallel input are pins 10-15. The **PC.ParallelGet** procedure returns the sum of 


64    Pin 10 high  
128   Pin 11 high   
32    Pin 12 high   
16    Pin 13 high   
8    Pin 15 high  


The **mod** and **div** operators can be used to determine which pins are high or low. 


## Status
Exported qualified.

This means that you can only call the function by calling **PC.ParallelGet**, not by calling **ParallelGet**.


## See also
**[PC.ParallelPut](pc_parallelput.html)** [procedure](procedure.html) for a diagram of the pins. That [procedure](procedure.html) is used to [set](set.html) the values on the parallel port.

