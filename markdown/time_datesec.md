
# Time.DateSec

## Syntax
**Time.DateSec** (_dateString_ : **string**) : **int**

## Description
The **Time.DateSec** function is used to convert a date and time string into a number, specifically, the number of seconds since 00:00:00 GMT Jan 1, 1970.

The function can also convert just the date ("_dd mmm yy_"), in which case it returns the number of seconds since 00:00:00 GMT Jan 1, 1970 from midnight of the entered day. It will also convert a time without the date ("_hh:mm:ss_"), in which case it returns the number of seconds that have passed since midnight of that day.

If the format is incorrect or can't be interpreted, then **Time.DateSec** will return 1 and **Error.Last** and **Error.LastMsg** will be set to the appropriate error.


## Example
This program gives the number of seconds since 00:00:00 GMT Jan 1, 1970.

        var theDateTime, theDate, theTime : string
        theDateTime := Time.Date
        theDate := theDateTime (1 .. 9)
        theTime := theDateTime (11 .. *)
        put "The number of seconds from 00:00:00 GMT Jan 1, 1970",
            "from midnight ", theDate, "is ", Time.DateSec (theDate)
        put "The number of seconds from midnight to ", theTime "is ", 
            Time.DateSec (theTime)
        put "The number of seconds from 00:00:00 GMT Jan 1, 1970",
            "from ", theDateTime, "is ", Time.DateSec (theDateTime)
## Status
Exported qualified.

This means that you can only call the function by calling **Time.DateSec**, not by calling **DateSec**.


## See also
**[Time.Sec](time_sec.html)**, **[Time.Date](time_date.html)** and **[Time.SecDate](time_secdate.html)** functions.

