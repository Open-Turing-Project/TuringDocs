
#maxint

##Syntax
**maxint** : **int**



##Description
The **maxint** function is used to determine the largest integer (**int**) that can be used in a program.



##Example
This program outputs the maximum integer.


        put "The largest integer that can be used is ", maxint
##Details
In current Turing and OOT implementations, **int** values are stored in 4 bytes, i.e., 32 bits. This determines the maximum **int** value, which is 2**311, equaling 2147483647.
There is an anomaly in computer arithmetic in that the absolute value of the largest negative integer is one larger than **maxint**. Turing reserves this extra value to represent the uninitialized integer. This value can be computed but any attempt to assign it to an **int** variable is detected as an overflow. You can use this extra value by using the **int4** type instead of **int**, but this type has no initialization checking.



##See also
**[maxnat.html](maxnat)** and **[minint.html](minint)**.
See also OOT predefined unit **[mathmodule.html](Math)**.


