
# PC.ParallelPut

## Syntax
**PC.ParallelPut** (_port_ : **int**, _value_ : **int**)

## Description
The **PC.ParallelPut** procedure is used on a PC to set the values on the data pins on the parallel port. The port is specified with the _port_ parameter which can have the value 1, 2 or 3 corresponding to "LPT1", "LPT2" and "LPT3". This procedure can be used to control robots and peripherals.


## Example
This program sets data bit 0, data bit 1 and so on to data bit 7.

        for i : 0 .. 7
            %Set data bit i on parallel port LPT2
            PC.ParallelPut (2, 2 ** i)  
            put "Data bit ", i, "  or Pin ", i + 2, "has just been set"
        end for
## Details
The **PC.ParallelPut** procedure is used to set the eight data bits on the PC's parallel port. These data bits 0 - 7 correspond to pins 2 - 9 on the parallel port.



![Doc Image](pc_parallelput01.gif)

The value sent to **PC.ParallelPut** is the sum of the following:


1   Data bit 0   16   Data bit 4
2   Data bit 1   32   Data bit 5
4   Data bit 2   64   Data bit 6
8   Data bit 3   128   Data bit 7


For example, the command **PC.ParallelPut** (97) sets data bits 0, 5 and 6 high (97 = 1 + 32 + 64) and sets the other data pins low. Because there are only 8 data pins in the parallel port, the value passed to **PC.ParallelPut** must be from 0 to 255.

The **PC.ParallelPut** procedure is not meant for sending a stream of characters to the parallel port (for example, if you want to send the string "Hello" to the printer). If you want to do this, open the file "LPT1" using the **open** statement and **put** to the file. 


## Status
Exported qualified.

This means that you can only call the function by calling **PC.ParallelPut**, not by calling **ParallelPut**.


## See also
**[PC.ParallelGet](pc_parallelget.html)** function, which is used to [read](read.html) the values of pins on the parallel port.

