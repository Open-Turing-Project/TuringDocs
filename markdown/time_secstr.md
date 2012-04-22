
#Time.SecStr

##Syntax
**Time.SecStr** (_timeInSecs_ : **int**, _formatString_ : **string**) : **string**



##Description
The **Time.SecStr** function is used to convert the number of seconds since 00:00:00 GMT Jan 1, 1970 into a date and time string.
If _timeInSecs_ is incorrect or can't be interpreted, then **Time.SecStr** will return the empty string and **Error.Last** and **Error.LastMsg** will be set to the appropriate error.



##Detailsn
The _formatString_ parameter specifies how the output stringwill look. The formatString consists of different letters specifyingthe different formats and spaces or commas between these letters. The different letters can be combined to provide different date formats.
Here are the letters:

Abbreviated weekday name
Full weekday name
Abbreviated month name
Full month name
Date and time representation appropriate for locale
Day of month as decimal number (01 - 31)
Hour in 24-hour format (00 - 23)
Hour in 12-hour format (01 - 12)
Day of year as decimal number (001 - 366)
Month as decimal number (01 - 12)
Minute as decimal number (00 - 59)
Current locale&#146;s A.M./P.M. indicator for 12-hour clock
Second as decimal number (00 - 59)
Week of year as decimal number, with Sunday as first day of week (00 - 53)
Weekday as decimal number (0 - 6; Sunday is 0)
Week of year as decimal number, with Monday as first day of week (00 - 53)
Date representation for current locale
Time representation for current locale
Year without century, as decimal number (00 - 99)
Year with century, as decimal number
Time-zone name




##Example
This program outputs the current date and the day number in the year.Example output: **`Thursday November 13, 2003 is day number 317 of 2003`**


        put Time.SecStr (Time.Sec, "A B d, Y"), " is day number ",
            Time.SecStr (Time.Sec, "j"), " of ", Time.SecStr (Time.Sec, "Y")
##Execute
This example demonstrates each of the formatting letters.




##Status
Exported qualified.
This means that you can only call the function by calling **Time.SecStr**, not by calling **SecStr**.



##See also
**[time_sec.html](Time.Sec)** and **[time_secparts.html](Time.SecParts)** functions.


