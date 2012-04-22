
#Time.PartsSec

##Syntax
**Time.PartsSec** (_year_, _month_, _day_, _hour_, _minute_, _second_ : **int**) : **int**



##Description
The **Time.PartsSec** function is used to convert the numeric parts of a date (specifically the year, month, day, hour, minute and second) into the number of seconds since 00:00:00 GMT Jan 1, 1970 and the date specified by the parts.
The function can also convert a time without a date (year, month and day are all 0), in which case it returns the number of seconds that have passed since midnight of the current day.
If the numbers don't make any sense or can't be interpreted, then **Time.PartsSec** will return 1 and **Error.Last** and **Error.LastMsg** will be set to the appropriate error.



##Example
This program gives the number of seconds between 00:00:00 GMT Jan 1, 1970 and 9:27 in the morning, Christmas Day, 1989).


        put "The number of seconds from 00:00:00 GMT Jan 1, 1970",
            "is ", Time.PartsSec (1989, 12, 25, 9, 27, 0)
##Status
Exported qualified.
This means that you can only call the function by calling **Time.PartsSec**, not by calling **PartsSec**.



##See also
**[time_secparts.html](Time.SecParts)**, **[time_date.html](Time.Date)** and **[time_sec.html](Time.Sec)** functions.


