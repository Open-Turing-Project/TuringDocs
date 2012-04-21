
#wallclock

##Syntax
**wallclock** ( **var** *c* : **int** )

##Description
The **wallclock** statement is used to determine the time in seconds since 00:00:00 GMT (Greenwich Mean Time) January 1, 1970.

##Example
This program tells you how many seconds since 1970.
        var seconds : string
        wallclock ( seconds )
        put "The number of seconds since 1970 is ", seconds
##Details
Be warned that on some computers such as IBM PC compatibles or Apple Macintoshes, the time may not be set correctly in the operating system; in that case, the **wallclock** procedure will give incorrect results. Also, on IBM PC compatibles, the call is dependent on having the time zone TZ variable correctly set. On an IBM PC, the default time zone is set to PST (6 hours from GMT).
On the Apple Macintosh, the **wallclock** procedure returns the number of seconds since 00:00:00 local time Jan. 1, 1970.

##See also
**[delay.html](delay)**, **[time.html](time)**, **[clock.html](clock)**, **[sysclock.html](sysclock)** and **[date.html](date)** statements.
See also predefined unit **[timemodule.html](Time)**.
