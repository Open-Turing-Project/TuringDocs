
#date

##Syntax
**date** (**var** *d* : **string**)

##Description
The **date** statement is used to determine the current date. Variable *d *is assigned a string in the format "*dd mmm yy*", where *mmm* is the first 3 characters of the month, e.g., "*Apr*". For example, if the date is Christmas 2002, *d *will be set to "*25 Dec 02*".

##Example
This program greets you and tells you the date.
        var today : string
        date (today)
        put "Greetings!!  The date today is ", today
##Details
Be warned that Turing gets the date from the operating system. If the date is is not correctly set in the operating system, then the **date** procedure will give incorrect results.

##See also
**[delay.html](delay)**, **[clock.html](clock)**, **[sysclock.html](sysclock)**, **[wallclock.html](wallclock)** and **[time.html](time)** statements. 
See also predefined unit **[timemodule.html](Time)**.
