
# arcsin

## Syntax
**arcsin** (_r_ : **real**) : **real**

## Description
The **arcsin** function is used to find the arc sine of a value. The result is given in radians. For example, **arcsin** (0.5) is p / 6.


## Example
This program prints out the arcsine of -1 through 1 in radians.

        for i : -4 .. 4
            const arg := i / 4
            put "Arc sine of ", arg, " is ",
                arcsin (arg), " radians"
        end for
## See also
the **[arccos](arccos.html)** and **[arctan](arctan.html)** functions for calculating arccosine and arctangent.

the **[arcsind](arcsind.html)** function which finds the arc sine of a value with the result given in degrees. (2p radians are the same as 360 degrees.)

See also predefined unit **[Math](mathmodule.html)**.

