
#sqrt

##Syntax
**sqrt** ( *r* : **real** ) : **real**

##Description
The **sqrt** function is used to find the square root of a number. For example, **sqrt** (4) is 2.

##Example
This program prints out the square roots of 1, 2, 3,  up to 100.
        for i : 1 .. 100
            put "Square root of ", i, " is ", sqrt ( i )
        end for
##Details
It is illegal to try to take the square root of a negative number. The result of **sqrt** is always positive or zero.
The opposite of a square root is the square. For example, the square of *x* is written is *x***2.

##See also
See also predefined unit **[mathmodule.html](Math)**.
