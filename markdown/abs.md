
#abs

##Syntax
**abs** (*expn*)



##Description
The **abs** function is used to find the absolute value of a number (the *expn*). For example, **abs** (-23) is 23.



##Example
This program outputs 9.83.


        var x : real := -9.83
        put abs (x) % Outputs 9.83
##Details
The **abs** function accepts numbers that are either **int**'s or **real**'s. The type of the result is the same type as the accepted number. The **abs** function is often used to see if one number *x* is within a given distance *d *of another number *y*; for example:
 **if** **abs** (*x* - *y*) **<**= *d* **then** 



##See also
predefined unit **[mathmodule.html](Math)**.


