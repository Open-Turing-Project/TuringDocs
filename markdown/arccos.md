
#arccos

##Syntax
**arccos** (*r* : **real**) : **real**



##Description
The **arccos** function is used to find the arc cosine of a value. The result is given in radians. For example, **arccos** (0.5) is p / 3.



##Example
This program prints out the arccosine of -1 through 1 in radians.


        for i : -4 .. 4
            const arg := i / 4
            put "Arc cosine of ", arg, " is ",
                arccos (arg), " radians"
        end for
##See also
the **[arcsin.html](arcsin)** and **[arctan.html](arctan)** functions for calculating arcsine and arctangent.
the **[arccosd.html](arccosd)** function which finds the arc cosine of a value with the result given in degrees. (2p radians are the same as 360 degrees.)
See also predefined unit **[mathmodule.html](Math)**.


