
# Time

## Description
This unit contains the predefined subprograms that handle anything to do with time, either as a date or as a timer.

All routines in the **Time** unit are exported qualified (and thus must be prefaced with "**Time.**").


## Entry Points

[**Sec**](time_sec.html)   Returns the number of seconds since 1/1/1970 00:00:00 GMT.
[**Date**](time_date.html)   Returns the current date and time as a string.
[**SecDate**](time_secdate.html)   Converts a number of seconds into a date / time string.
[**DateSec**](time_datesec.html)   Converts a date / time string to a number of seconds.
[**SecParts**](time_secparts.html)   Converts the number of seconds since 1/1/1970 00:00:00 GMT into a day of month, month, year, day of week, hour, minute and second integers.
[**PartsSec**](time_partssec.html)   Converts a day of month, month, year, hour, minute and second integers into the number of seconds since 1/1/1970 00:00:00 GMT.
[**SecStr**](time_secstr.html)   Converts the number of seconds since 1/1/1970 00:00:00 GMT into a user specified formatted string representing the date.
[**Elapsed**](time_elapsed.html)   Returns the number of milliseconds elapsed since the program started to run.
[**ElapsedCPU**](time_elapsedcpu.html)   Returns the number of milliseconds of CPU time elapsed since the program started to run.
[**Delay**](time_delay.html)   Sleeps for a specified number of milliseconds.
[**DelaySinceLast**](time_delaysincelast.html)   Sleeps until a specified number of milliseconds since the last call to Time.DelaySinceLast.
