
# Time.ElapsedCPU

## Syntax
**Time.ElapsedCPU** : **int**

## Description
The **Time.ElapsedCPU** function is used on a multitasking system such as UNIX to determine the amount of time that has been used by this program (process). The number of central processor milliseconds assigned to this program is returned. This is of little use on a personal computer, where **Time.ElapsedCPU** returns the same value as **Time.Elapsed**.


## Example
On a UNIX system, this program tells you how much time it has used.

        var timeUsed : int
        timeUsed := Time.ElapsedCPU
        put "This program has used ", timeUsed,
                " milliseconds of CPU time"
## Status
Exported qualified.

This means that you can only call the function by calling **Time.ElapsedCPU**, not by calling **ElapsedCPU**.


## See also
**[Time.Elapsed](time_elapsed.html)** and **[Time.Delay](time_delay.html)** subprograms.

