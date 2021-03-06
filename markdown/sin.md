
# sin

## Syntax
**sin** ( _r_ : **real** ) : **real**

## Description
The **sin** function is used to find the sine of an angle given in radians. For example, **sin** (0) is 0.


## Example
This program prints out the sine of p/6, 2p/6, 3p/6, up to 12p/6 radians.

        const pi := 3.14159
        for i : 1 .. 12
            const angle := i * pi / 6
            put "Sin of ", angle, " is ", sin ( angle )
        end for
## See also
the **[cos](cos.html)** and **[tan](tan.html)** functions for calculating cosine and tangent.

the **[sind](sind.html)** function which finds the sine of an angle given in degrees. (2p radians are the same as 360 degrees.)

See also predefined unit **[Math](mathmodule.html)**.

