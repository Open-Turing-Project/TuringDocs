
#time

##Syntax
**time** ( **var** _t_  : **string** )



##Description
The **time** statement is used to determine the current time of day. Variable _t_ is assigned a string in the format "_hh:mm:ss_". For example, if the time is two minutes and 47 seconds after nine A.M., _t_ will be set to "_09:02:47_". Twenty-four hour time is used. For example, eleven thirty P.M. gives the string "_23:30:00_".



##Example
This program greets you and tells you the time of day.


        var timeOfDay : string
        time ( timeOfDay )
        put "Greetings!!  The time is ", timeOfDay
##Details
Be warned that on some computers such as IBM PC compatibles or Apple Macintoshes, the time may not be set correctly in the operating system. In this case, the **time** procedure will give incorrect results.



##See also
**[delay.html](delay)**, **[clock.html](clock)**, **[sysclock.html](sysclock)**, **[wallclock.html](wallclock)** and **[date.html](date)** statements.
See also predefined unit **[timemodule.html](Time)**.


