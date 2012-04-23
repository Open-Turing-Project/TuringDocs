
#erealstr

##Syntax
**erealstr** (_r_ : **real**, 
_width_, _fractionWidth_, _exponentWidth_ : **int**) :**string**



##Description
The **erealstr** function is used to convert a **real** number to a string; for example, **erealstr** (2.5e1, 10, 3, 2)="_b2_._500e+01_" where _b_ represents a blank. The string (including exponent) is an approximation to _r_, padded on the left with blanks as necessary to a length of _width_.

The _width_ must be a non-negative **int** value. If the _width_ parameter is not large enough to represent the value of _r_, it is implicitly increased as needed.

The _fractionWidth_ parameter is the non-negative number of fractional digits to be displayed. The displayed value is rounded to the nearest decimal equivalent with this accuracy. In the case of a tie, the value is rounded to the larger of the two values.

The _exponentWidth_ parameter must be non-negative and give the number of exponent digits to be displayed. If _exponentWidth_ is not large enough to represent the exponent, more space is used as needed. The string returned by _erealstr_ is of the form:

where _sign_ is a plus or minus sign. The leftmost digit is non-zero, unless all the digits are zeros.

The **erealstr** function approximates the inverse of **strreal**, although round-off errors keep these from being exact inverses.

        {blank}[-]digit.{digit}e sign digit {digit}
##See also
**[frealstr.html](frealstr)**, **[realstr.html](realstr)**, **[strreal.html](strreal)**, **[intstr.html](intstr)** and **[strint.html](strint)** functions.

