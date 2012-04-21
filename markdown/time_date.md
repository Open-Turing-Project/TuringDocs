
#Time.Date

##Syntax
**Time.Date** : **string**



##Description
The **Time.Date** function returns the current date and time as a string. The returned string in the format "*dd mmm yy hh:mm:ss*", where *mmm* is the first 3 characters of the month, e.g., "*Apr*". For example, if the date is Christmas 1989 at 9:02:37 in the morning, **Time.Date** will return "*25 Dec 89 09:02:37*". Twenty-four hour time is used, so eleven thirty at night the same day would return "*25 Dec 89 23:30:00*"



##Example
This program greets you and tells you the date and time.


        var theDateTime, theDate, theTime : string
        theDateTime := Time.Date
        theDate := theDateTime (1 .. 9)
        theTime := theDateTime (11 .. *)
        put "Greetings!!  The date and time today is ", Time.Date
##Details
Be warned that on some computers, such as IBM PC compatibles or Apple Macintoshes, the date may not be set correctly in the operating system; in that case, the **Time.Date **procedure will give incorrect results.
The string form of the date can be converted to a numeric form for comparison purposes using the **Time.DateSec** function. The numeric form can be converted to a string using the **Time.SecDate** function. The numeric form of the time can be obtained using the **Time.Sec** function.



##Status
Exported qualified.
This means that you can only call the function by calling **Time.Date**, not by calling **Date**.



##See also
**[time_sec.html](Time.Sec)**, **[time_datesec.html](Time.DateSec)** and **[time_secdate.html](Time.SecDate)** functions.


