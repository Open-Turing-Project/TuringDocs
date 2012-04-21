
#Time

##Description
This unit contains the predefined subprograms that handle anything to do with time, either as a date or as a timer.
All routines in the **Time** unit are exported qualified (and thus must be prefaced with "**Time.**").



##Entry Points
[time_sec.html](**Sec**) Returns the number of seconds since 1/1/1970 00:00:00 GMT.[time_date.html](**Date**) Returns the current date and time as a string.[time_secdate.html](**SecDate**) Converts a number of seconds into a date / time string.[time_datesec.html](**DateSec**) Converts a date / time string to a number of seconds.[time_secparts.html](**SecParts**) Converts the number of seconds since 1/1/1970 00:00:00 GMT into a day of month, month, year, day of week, hour, minute and second integers.[time_partssec.html](**PartsSec**) Converts a day of month, month, year, hour, minute and second integers into the number of seconds since 1/1/1970 00:00:00 GMT.[time_secstr.html](**SecStr**) Converts the number of seconds since 1/1/1970 00:00:00 GMT into a user specified formatted string representing the date.[time_elapsed.html](**Elapsed**) Returns the number of milliseconds elapsed since the program started to run.[time_elapsedcpu.html](**ElapsedCPU**) Returns the number of milliseconds of CPU time elapsed since the program started to run.[time_delay.html](**Delay**) Sleeps for a specified number of milliseconds.[time_delaysincelast.html](**DelaySinceLast**) Sleeps until a specified number of milliseconds since the last call to Time.DelaySinceLast.


