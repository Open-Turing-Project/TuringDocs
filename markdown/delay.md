
#delay

##Syntax
**delay** (*duration* : **int**)



##Description
The **delay** statement is used to cause the program to pause for a given time. The time duration is in milliseconds.



##Example
This program prints the integers 1 to 10 with a second delay between each.


        for i : 1 .. 10
            put i
            delay (1000)    % Pause for 1 second
        end for
##Details
On Apple Macintoshes, the hardware resolution of duration is in units of 17 milliseconds (1/60th of a second). For example, **delay**(500) will delay the program by about half a second, but may be off by as much as 17 milliseconds.



##See also
**[sound.html](sound)**, **[clock.html](clock)**, **[sysclock.html](sysclock)**, **[wallclock.html](wallclock)**, **[time.html](time)** and **[date.html](date)** statements.
See also predefined unit **[timemodule.html](Time)**.


