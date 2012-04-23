
# cos

## Syntax
**cos** (_r_ : **real**) : **real**

## Description
The **cos** function is used to find the cosine of an angle given in radians. For example, **cos** (0) is 1.


## Example
This program prints out the cosine of p/6, 2p/6, 3p/6, up to 12p/6 radians.

        const pi := 3.14159
        for i : 1 .. 12
            const angle := i * pi / 6
            put "Cos of ", angle, " is ", cos (angle)
        end for
## See also
the **[sin](sin.html)** and **[tan](tan.html)** functions for calculating sine and tangent.

the **[cosd](cosd.html)** function which finds the cosine of an angle given in degrees. (2p radians are the same as 360 degrees.)

See also predefined unit **[Math](mathmodule.html)**.

