
#Time.SecDate

##Syntax
**Time.SecDate** (*timeInSecs* : **int**) : **string**

##Description
The **Time.SecDate** function is used to** **convert  the number of seconds since 00:00:00 GMT Jan 1, 1970 into a date and time string. 
If *timeInSecs *is incorrect or can't be interpreted, then **Time.SecDate** will return the empty string and **Error.Last **and** Error.LastMsg** will be set to the appropriate error.

##Example
This program gives the number of seconds since 00:00:00 GMT Jan 1, 1970 and the date in string form.
        var timeInSecs : int := Time.Sec
        var theDateTime: string
        theDateTime := Time.SecDate (timeInSecs)
        put "The number of seconds since 1970 is ", timeInSecs 
        put "Greetings!!  The date and time today is ", theDateTime
##Status
Exported qualified.
This means that you can only call the function by calling **Time.SecDate**, not by calling **SecDate**.

##See also
**[time_sec.html](Time.Sec)**, **[time_date.html](Time.Date)** and **[time_datesec.html](Time.DateSec)** functions.
