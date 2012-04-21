
#arccosd

##Syntax
**arccosd** (*r* : **real**) : **real**



##Description
The **arccosd** function is used to find the arc cosine of an angle given in degrees. For example, **arccosd** (0.5) is 60.



##Example
This program prints out the arccosine of values from -1 to 1 in degrees.


        for i : -4 .. 4
            const arg := i / 4
            put "Arc cosine of ", arg, " is ",
                arccosd (arg), " degrees"
        end for
##See also
the **[arcsind.html](arcsind)** and **[arctand.html](arctand)** functions for calculating arcsine and arctangent
the **[arccos.html](arccos)** function which finds the arc cosine of a value with the result given in radians. (2p radians are the same as 360 degrees.)
See also predefined unit **[mathmodule.html](Math)**.


