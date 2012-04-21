
#sign

##Syntax
**sign** ( *r* : **real** ) : -1 .. 1



##Description
The **sign** function is used to determine whether a number is positive, zero or negative. It returns 1 if *r* > 0, 0 if *r* = 0, and -1 if *r* < 0. For example, **sign** (5) is 1 and **sign** (-23) is -1.



##Example
This program reads in numbers and determines if they are positive, zero or negative:


        var x : real
        get x
        case sign ( x ) of
            label 1 : put "Positive"
            label 0 : put "Zero"
            label -1 : put "Negative"
        end case
##See also
See also predefined unit **[mathmodule.html](Math)**.


