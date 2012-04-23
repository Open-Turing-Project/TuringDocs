
# intstr

## Syntax
**intstr** ( _i_ : **int** [ , _width_ : **int** [ , _base_ : **int** ] ] ) : **string**

## Description
The **intstr** function is used to convert an integer to a string. The string is equivalent to _i_, padded on the left with blanks as necessary to a length of _width_, written in the given number _base_. For example, **intstr** (14, 4, 10)="_bb_14" where _b_ represents a blank. The _width_ and _base_ parameters are both optional. If they are omitted, the string is made just long enough to hold the value, and the number base is 10. For example, **intstr** (14, 4) = "bb14" and **intstr** (23 ) = "23". 

The _width_ parameter must be non-negative. If _width_ is not large enough to represent the value of _i_, the length is automatically increased as needed.

The string returned by **intstr** is of the form:


{blank}[-]digit{digits}


where {blank} means zero or more blanks, [-] means an optional minus sign, and digit{digit} means one or more digits. The leftmost digit is either non-zero or else a single zero digit. In other words, leading zeros are suppressed.

The letters A, B, C &#133; are used to represent the digit values 10, 11, 12, &#133; The _base_ must be in the range 2 to 36 (36 because there are ten digits and 26 letters). For example, **intstr** (255, 0, 16) = "FF".

The **intstr** function is the inverse of **strint**, so for any integer _i_, 

        strint ( intstr (i)) = i.
## See also
**[chr](chr.html)**, **[ord](ord.html)** and **[strint](strint.html)** functions. See also the **[natstr](natstr.html)** and **[strnat](strnat.html)** functions. See also _explicitIntegerConstants_ for the way to write non base 10 values in a [program](program.html).

