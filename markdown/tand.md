
# tand

## Syntax
**tand** ( _r_ : **real** ) : **real**

## Description
The **tand** function is used to find the tangent of an angle given in degrees. For example, **tand** (45) is 1.


## Example
This program prints out the tangent of 0, 30, 60, 90, up to 360 degrees.

        for i : 0 .. 12
            const angle := i * 30
            put "Tan of ", angle, " is ", tand ( angle )
        end for
## Details
An argument to **tan** of 90, 270, etc. may result in an overflow (and halt of the program) as the result is technically &yen;. (It may not cause an overflow due to rounding, in which case the result will simply be a very large number.)

## See also
the **[sind](sind.html)** and **[cosd](cosd.html)** functions for calculating sine and cosine.

the **[tan](tan.html)** function which finds the tangent of an angle given in radians. (2p radians are the same as 360 degrees.)

See also predefined unit **[Math](mathmodule.html)**.

