
#erealstr

##Syntax
**erealstr** (*r *: **real**,  *width*, *fractionWidth*, *exponentWidth* : **int**) :**string**



##Description
The **erealstr** function is used to convert a **real** number to a string; for example, **erealstr** (2.5e1, 10, 3, 2)="*b2*.*500e+01*" where *b* represents a blank. The string (including exponent) is an approximation to *r*, padded on the left with blanks as necessary to a length of *width*.
The *width* must be a non-negative **int** value. If the *width* parameter is not large enough to represent the value of *r*, it is implicitly increased as needed.
The *fractionWidth* parameter is the non-negative number of fractional digits to be displayed. The displayed value is rounded to the nearest decimal equivalent with this accuracy. In the case of a tie, the value is rounded to the larger of the two values.
The *exponentWidth* parameter must be non-negative and give the number of exponent digits to be displayed. If *exponentWidth* is not large enough to represent the exponent, more space is used as needed. The string returned by *erealstr* is of the form:
where *sign* is a plus or minus sign. The leftmost digit is non-zero, unless all the digits are zeros.
The **erealstr** function approximates the inverse of **strreal**, although round-off errors keep these from being exact inverses.


        {blank}[-]digit.{digit}e sign digit {digit}
##See also
**[frealstr.html](frealstr)**, **[realstr.html](realstr)**, **[strreal.html](strreal)**, **[intstr.html](intstr)** and **[strint.html](strint)** functions.


