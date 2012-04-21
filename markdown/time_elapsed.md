
#Time.Elapsed

##Syntax
**Time.Elapsed** : **int**



##Description
The **Time.Elapsed **function returns the amount of time since a program (process) started running. The number of milliseconds since the program started running is returned.



##Example
This program tells you how much time it has used.


        var timeRunning : int
        timeRunning := Time.Elapsed
        put "This program has run ", timeRunning, " milliseconds"
##Details
On IBM PC compatibles, this is the total time since the Turing system was started up. The hardware resolution of duration is in units of 55 milliseconds. For example, **Time.Elapsed **may be off by as much as 55 milliseconds.
On Apple Macintoshes, this is the total time since the machine was turned on. The hardware resolution of duration is in units of 17 milliseconds (1/60-th of a second).



##Status
Exported qualified.
This means that you can only call the function by calling **Time.Elapsed**, not by calling **Elapsed**.



##See also
**[time_elapsedcpu.html](Time.ElapsedCPU) **and **[time_delay.html](Time.Delay)** subprograms.


