
#ln

##Syntax
**ln** ( _r_ : **real** ) : **real**



##Description
The **ln** function is used to find the natural logarithm (base e) of a number. For example, **ln** ( 1) is 0.



##Example
This program prints out the logarithms of 1, 2, 3, &#133; up to 100.


        for i : 1 .. 100
            put "Logarithm of ", i, " is ", ln ( i )
        end for
##Details
See also the **exp** (exponential) function. You cannot take the logarithm of zero or a negative number.



##Note
logn (_i_ ) = ln (_i_ ) / ln (_n_ )



##See also
**[exp.html](exp)** (the exponentiation function).
See also predefined unit **[mathmodule.html](Math)**.


