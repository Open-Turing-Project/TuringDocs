
#cosd

##Syntax
**cosd** (*r* : **real**) : **real**



##Description
The **cosd** function is used to find the cosine of an angle given in degrees. For example, **cosd** (0) is 1.



##Example
This program prints out the cosine of 30, 60, 90, up to 360 degrees.


        for i : 1 .. 12
            const angle := i * 30
            put "Cos of ", angle, " is ", cosd (angle)
        end for
##See also
the **[sind.html](sind)** and **[tand.html](tand)** functions for calculating sine and tangent.
the **[cos.html](cos)** function which finds the cosine of an angle given in radians. (2p radians are the same as 360 degrees.)
See also predefined unit **[mathmodule.html](Math)**.


