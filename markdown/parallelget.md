
#parallelget

##Syntax
**parallelget** : **int**



##Description
The **parallelget** procedure is used on a PC to read the value of certain pins on the parallel port. This port corresponds to the MS-DOS device "LPT1". This procedure can be used to control robots and peripherals.



##Example
This program reads and prints the values of the five data pins of the PC's parallel port.


        const val : int := parallelget  % Read in the set of pin values
        put "Pin 10 is: ", (val div 64) mod 2
        put "Pin 11 is: ", (val div 128) mod 2
        put "Pin 12 is: ", (val div 32) mod 2
        put "Pin 13 is: ", (val div 16) mod 2
        put "Pin 15 is: ", (val div 8) mod 2
##Details
The five pins that are used for parallel input are pins 10-15. The **parallelget** procedure returns the sum of 
 64  Pin 10 high 128 Pin 11 high  32  Pin 12 high  16  Pin 13 high  8  Pin 15 high
The **mod** and **div** operators can be used to determine which pins are high or low. 



##See also
the **[parallelput.html](parallelput)** [procedure.html](procedure) for a diagram of the pins. That [procedure.html](procedure) is used to [set.html](set) the values on the parallel port.


