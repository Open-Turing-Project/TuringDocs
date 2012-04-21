
#minint

##Syntax
**minint** : **int**



##Description
The **minint** function is used to determine the smallest integer (**int**) that can be used in a program.



##Example
This program outputs the maximum integer.


        put "The smallest integer that can be used is ", minint
##Details
In current  implementations, **int** values are stored in 4 bytes, i.e., 32 bits. This determines the minimum **int** value, which is -2**31-1, equaling -2147483647.
There is an anomaly in computer arithmetic in that the absolute value of the largest negative integer is one larger than **maxint**. Turing reserves this extra value to represent the uninitialized integer. This value can be computed but any attempt to assign it to an **int** variable is detected as an overflow. You can use this extra value by using the **int4** type instead of **int**, but this type has no initialization checking.



##See also
**[minnat.html](minnat)** and **[maxint.html](maxint)**.
See also predefined unit **[limitsmodule.html](Limits)**.


