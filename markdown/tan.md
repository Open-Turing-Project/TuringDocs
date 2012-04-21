
#tan

##Syntax
**tan** ( *r* : **real** ) : **real**



##Description
The **tan** function is used to find the tangent of an angle given in radians. For example, **tan** (p/4) is 0.5.



##Example
This program prints out the tangent of 0, p/6, 2p/6, 3p/6, up to 12p/6 radians.


        for i : 0 .. 12
            const angle := i * Math.PI / 6
            put "Tangent of ", angle, " is ", tan ( angle )
        end for
##Details
An argument to **tan** of p/2, 3*p/2, etc. may result in an overflow (and halt of the program) as the result is technically ¥. (It may not cause an overflow due to rounding, in which case the result will simply be a very large number.)



##See also
the **[sin.html](sin)** and **[cos.html](cos)** functions for calculating sine and cosine.
the **[tand.html](tand)** function which finds the tangent of an angle given in degrees. (2p radians are the same as 360 degrees.)
See also predefined unit **[mathmodule.html](Math)**.


