
#realstr

##Syntax
**realstr** ( *r* : **real**, *width* : **int** ) : **string**



##Description
The **realstr** function is used to convert a **real** number to a string. For example, **realstr** (2.5e1, 4)="*bb25*" where *b* represents a blank. The string is an approximation to *r*, padded on the left with blanks as necessary to a length of *width*.
The *width* parameter must be non-negative. If the *width* parameter is not large enough to represent the value of *r* it is implicitly increased as needed. The displayed value is rounded to the nearest decimal equivalent with this accuracy. In the case of a tie, the display value is rounded to the next larger value.
The string **realstr** (*r*,* width* ) is the same as the string **frealstr** (*r*,* width*,* defaultfw* ) when *r* =0 or when 1e-3 < *abs* (*r* ) < 1e6, otherwise the same as **erealstr** (*r*,* width*,* defaultfw*,* defaultew*), with the following exceptions. With *realstr*, trailing fraction zeroes are omitted, and the decimal point is omitted if the entire fraction is zero. (These omissions take place even if the exponent part is printed.) If an exponent is printed, any plus sign and leading zeroes are omitted. Thus, whole number values are in general displayed as integers.
*Defaultfw* is an implementation-defined number of fractional digits to be displayed. For most implementations, *defaultfw* will be 6. 
*Defaultew* is an implementation-defined number of exponent digits to be displayed. For most implementations, *defaultew* will be 2.
The **realstr** function approximates the inverse of **strreal**, although round-off errors keep these from being exact inverses.



##See also
the **[erealstr.html](erealstr)**, **[frealstr.html](frealstr)**, **[strreal.html](strreal)**, **[intstr.html](intstr)** and **[strint.html](strint)** functions.


