
# Time.Sec

## Syntax
**Time.Sec** : **int**

## Description
The **Time.Sec** function returns the current date and time as a number. The returned integer is the time in seconds since 00:00:00 GMT (Greenwich Mean Time) January 1, 1970.


## Example
This program tells you how many seconds since 1970.

        put "The number of seconds since 1970 is ", Time.Sec
## Details
Be warned that on some computers, such as IBM PC compatibles or Apple Macintoshes, the date may not be set correctly in the operating system; in that case, the **Time.Date** procedure will give incorrect results.

The string form of the date can be converted to a numeric form for comparison purposes using the **Time.DateSec** function. The numeric form can be converted to a string using the **Time.SecDate** function. The numeric form of the time can be obtained using the **Time.Sec** function.


## Status
Exported qualified.

This means that you can only call the function by calling **Time.Sec**, not by calling **Sec**.


## See also
**[Time.Date](time_date.html)**, **[Time.DateSec](time_datesec.html)** and **[Time.SecDate](time_secdate.html)** functions.

