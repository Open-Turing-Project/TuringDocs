
#clock

##Syntax
**clock*** *(**var*** c *: **int**)

##Description
The **clock** statement is used to determine the amount of time since a program (process) started running. Variable *c *is assigned the number of milliseconds since the program started running.

##Example
This program tells you how much time it has used.
        var timeRunning : int
        clock (timeRunning)
        put "This program has run ", timeRunning, " milliseconds"
##Details
On Apple Macintoshes, the hardware resolution of duration is in units of 17 milliseconds (1/60-th of a second).

##See also
**[delay.html](delay)**, **[time.html](time)**, **[sysclock.html](sysclock)**, **[wallclock.html](wallclock)** and **[date.html](date)** statements.
See also predefined unit **[timemodule.html](Time)**.
