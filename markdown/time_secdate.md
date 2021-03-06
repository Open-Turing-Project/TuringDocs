
# Time.SecDate

## Syntax
**Time.SecDate** (_timeInSecs_ : **int**) : **string**

## Description
The **Time.SecDate** function is used to convert  the number of seconds since 00:00:00 GMT Jan 1, 1970 into a date and time string. 

If _timeInSecs_ is incorrect or can't be interpreted, then **Time.SecDate** will return the empty string and **Error.Last** and **Error.LastMsg** will be set to the appropriate error.


## Example
This program gives the number of seconds since 00:00:00 GMT Jan 1, 1970 and the date in string form.

        var timeInSecs : int := Time.Sec
        var theDateTime: string
        theDateTime := Time.SecDate (timeInSecs)
        put "The number of seconds since 1970 is ", timeInSecs 
        put "Greetings!!  The date and time today is ", theDateTime
## Status
Exported qualified.

This means that you can only call the function by calling **Time.SecDate**, not by calling **SecDate**.


## See also
**[Time.Sec](time_sec.html)**, **[Time.Date](time_date.html)** and **[Time.DateSec](time_datesec.html)** functions.

