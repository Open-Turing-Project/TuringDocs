
# arcsind

## Syntax
**arcsind** (_r_ : **real**) : **real**

## Description
The **arcsind** function is used to find the arc sine of an angle given in degrees. For example, **arcsind** (0.5) is 30.


## Example
This program prints out the arcsine of values from -1 to 1 in degrees.

        for i : -4 .. 4
            const arg := i / 4
            put "Arc sine of ", arg, " is ",
                arcsind (arg), " degrees"
        end for
## See also
the **[arccosd](arccosd.html)** and **[arctand](arctand.html)** functions for calculating arccosine and arctangent

the **[arcsin](arcsin.html)** function which finds the arc sine of a value with the result given in radians. (2p radians are the same as 360 degrees.)

See also predefined unit **[Math](mathmodule.html)**.

