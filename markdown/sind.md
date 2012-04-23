
# sind

## Syntax
**sind** ( _r_ : **real** ) : **real**

## Description
The **sind** function is used to find the sine of an angle given in degrees. For example, **sind** (0) is 0.


## Example
This program prints out the sine of 30, 60, 90, up to 360 degrees.

        for i : 1 .. 12
            const angle := i * 30
            put "Sin of ", angle, " is ", sind ( angle )
        end for
## See also
the **[cosd](cosd.html)** and **[tand](tand.html)** functions for calculating cosine and tangent.

the **[sin](sin.html)** function which finds the sine of an angle given in radians. (2p radians are the same as 360 degrees.)

See also predefined unit **[Math](mathmodule.html)**.

