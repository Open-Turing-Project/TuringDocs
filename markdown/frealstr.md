
# frealstr

## Syntax
**frealstr** ( _r_ : **real**, _width_, _fractionWidth_ : **int** ) : **string**

## Description
The **frealstr** function is used to convert a real number to a string. For example, **frealstr** (2.5e1, 5, 1)="_b_25.0"  where _b_ represents a blank. The string is an approximation to _r_, padded on the left with blanks as necessary to a length of _width_.

The number of digits of the fraction to be displayed is given by _fractionWidth_.

The _width_ must be non-negative. If the _width_ parameter is not large enough to represent the value of _r_, it is implicitly increased as needed.

The _fractionWidth_must be non-negative. The displayed value is rounded to the nearest decimal equivalent with this accuracy. In the case of a tie, the value is rounded to the next larger value. The result string is of the form:

If the leftmost digit is zero, then it is the only digit to the left of the decimal point.

The **frealstr** function approximates the inverse of **strreal**, although round-off errors keep these from being exact inverses.

                {blank} [-]{digit}. {digit}
## See also
the **[erealstr](erealstr.html)**, **[realstr](realstr.html)**, **[strreal](strreal.html)**, **[intstr](intstr.html)** and **[strint](strint.html)** functions.

