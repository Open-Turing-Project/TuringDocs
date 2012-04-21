
#arctan

##Syntax
**arctan** (*r* : **real**) : **real**

##Description
The **arctan** function is used to find the arc tangent of a value. The result is given in radians. For example, **arctan** (1) is p / 4.

##Example
This program prints out the arctangent of 0 through 3 in radians.
        for i : 0 .. 12
            const arg := i / 4
            put "Arc tangent of ", arg, " is ",
                arctan (arg), " radians"
        end for
##See also
the **[arcsin.html](arcsin)** and **[arccos.html](arccos)** functions for calculating arcsine and arccosine
the **[arctand.html](arctand)** function which finds the arc tangent of a value with the result given in degrees. (2p radians are the same as 360 degrees.)
See also predefined unit **[mathmodule.html](Math)**.
