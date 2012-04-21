
#Time.SecStr

##Syntax
**Time.SecStr** (*timeInSecs* : **int**, *formatString* : **string**) : **string**

##Description
The **Time.SecStr** function is used to convert the number of seconds since 00:00:00 GMT Jan 1, 1970 into a date and time string.
If *timeInSecs* is incorrect or can't be interpreted, then **Time.SecStr** will return the empty string and **Error.Last** and **Error.LastMsg** will be set to the appropriate error.

##Detailsn
The *formatString* parameter specifies how the output stringwill look. The formatString consists of different letters specifyingthe different formats and spaces or commas between these letters. The different letters can be combined to provide different date formats.
   Here are the letters:
**a** Abbreviated weekday name**A** Full weekday name**b** Abbreviated month name**B** Full month name**c** Date and time representation appropriate for locale**d** Day of month as decimal number (01 - 31)**H** Hour in 24-hour format (00 - 23)**I** Hour in 12-hour format (01 - 12)**j** Day of year as decimal number (001 - 366)**m** Month as decimal number (01 - 12)**M** Minute as decimal number (00 - 59)**p** Current locales A.M./P.M. indicator for 12-hour clock**S** Second as decimal number (00 - 59)**U** Week of year as decimal number, with Sunday as first day of week (00 - 53)**w** Weekday as decimal number (0 - 6; Sunday is 0)**W** Week of year as decimal number, with Monday as first day of week (00 - 53)**x** Date representation for current locale**X** Time representation for current locale**y** Year without century, as decimal number (00 - 99)**Y** Year with century, as decimal number** z,Z ** Time-zone name

##Example
This program outputs the current date and the day number in the year.Example output: **Thursday November 13, 2003 is day number 317 of 2003**
        put Time.SecStr (Time.Sec, "A B d, Y"), " is day number ",
            Time.SecStr (Time.Sec, "j"), " of ", Time.SecStr (Time.Sec, "Y")
##Execute
This example demonstrates each of the formatting letters.

##Status
Exported qualified.
This means that you can only call the function by calling **Time.SecStr**, not by calling **SecStr**.

##See also
**[time_sec.html](Time.Sec)** and **[time_secparts.html](Time.SecParts)** functions.
