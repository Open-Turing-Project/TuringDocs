
# arctand

## Syntax
**arctand** (_r_ : **real**) : **real**

## Description
The **arctand** function is used to find the arc tangent of an angle given in degrees. For example, **arctand** (0) is 0.


## Example
This program prints out the arctangent of values from 0 to 3 in degrees.

        for i : 0 .. 12
            const arg := i / 4
            put "Arc tangent of ", arg, " is ",
                arctand (arg), " degrees"
        end for
## See also
the **[arcsind](arcsind.html)** and **[arccosd](arccosd.html)** functions for calculating arcsine and arccosine

the **[arctan](arctan.html)** function which finds the arc tangent of a value with the result given in radians. (2p radians are the same as 360 degrees.)

See also predefined unit **[Math](mathmodule.html)**.

