
#maxnat

##Syntax
**maxnat** : **nat**


##Description
The **maxnat** function is used to determine the largest natural number that can be used in a program.


##Example
This program outputs the maximum natural number.

        put "The largest natural number that can be used is ", maxnat
##Details
In current  implementations, natural numbers are stored in 4 bytes, i.e., 32 bits. This determines the maximum natural number, which is 2**32 - 2, equaling 4294967294.

In four bytes it is possible to represent one more value, namely, 2**32 - 1 = 4294967295. This extra value is used in Turing to represent the uninitialized natural number. Although it can be computed, any attempt to assign it to a **nat** variable is detected as an overflow. You can use this extra value by using the **nat4** type instead of **nat**, but this type has no initialization checking.


##See also
**[maxint.html](maxint)** and **[minnat.html](minnat)**.

See also predefined unit **[limitsmodule.html](Limits)**.

