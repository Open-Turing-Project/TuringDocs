
#minnat

##Syntax
**minnat** : **nat**


##Description
The **minnat** function is used to determine the smallest natural number that can be used in a program.


##Example
This program outputs the smallest natural number.

        put "The smallest natural number that can be used is ", minnat
##Details
In current Turing and OOT implementations, natural numbers are stored in 4 bytes, i.e., 32 bits. However, the minimum natural number in all implementations is 0. **minnat** is provided for purposes of symmetry with **minint**, **maxint** and **maxnat**.

In four bytes it is possible to represent one more value, namely, 2**32 - 1 = 4294967295. This extra value is used in Turing to represent the uninitialized natural number. Although it can be computed, any attempt to assign it to a **nat** variable is detected as an overflow. You can use this extra value by using the **nat4** type instead of **nat**, but this type has no initialization checking.


##See also
**[minint.html](minint)** and **[maxnat.html](maxnat)**.

See also predefined unit **[limitsmodule.html](Limits)**.

