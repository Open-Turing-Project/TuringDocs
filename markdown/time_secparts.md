
#Time.SecParts

##Syntax
**Time.SecParts** (_sec_ : **int**, **var** _year_, _month_, _day_, 
_dayOfWeek_, _hour_, _minute_, _second_ : **int**)



##Description
The **Time.SecParts** function is used to convert a single number form of the time (the number of seconds since 00:00:00 GMT Jan 1, 1970) into a date with numeric component parts.

The _dayOfWeek_ parameter is 1 for Monday, 2 for Tuesday through 7 for Sunday.

If the _sec_ parameter doesn't make any sense or can't be interpreted, then **Time.PartsSec** will set all the **var** parameters to  1 and **Error.Last** and **Error.LastMsg** will be set to the appropriate error.


##Example
This program returns the current day of the week.

        var year, month, day, dayOfWeek, hour, minute, second : int
        Time.SecParts (Time.Sec, year, month, day, dayOfWeek, 
                                hour, minute, second )
        var days : array 1 .. 7 of string (10) := init ("Monday", "Tuesday", 
            "Wednesday", "Thursday", "Friday", "Saturday", "Sunday")
        put "The current day of the week is ", days (dayOfWeek)
##Status
Exported qualified.

This means that you can only call the function by calling **Time.SecParts** , not by calling **SecParts** .


**See also**   **Time.PartsSec**, **Time.Date** and **Time.Sec** functions.


