
#date

##Syntax
**date** (**var** _d_ : **string**)


##Description
The **date** statement is used to determine the current date. Variable _d_ is assigned a string in the format "_dd mmm yy_", where _mmm_ is the first 3 characters of the month, e.g., "_Apr_". For example, if the date is Christmas 2002, _d_ will be set to "_25 Dec 02_".


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

