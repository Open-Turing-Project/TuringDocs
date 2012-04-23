
#realstr

##Syntax
**realstr** ( _r_ : **real**, _width_ : **int** ) : **string**


##Description
The **realstr** function is used to convert a **real** number to a string. For example, **realstr** (2.5e1, 4)="_bb25_" where _b_ represents a blank. The string is an approximation to _r_, padded on the left with blanks as necessary to a length of _width_.

The _width_ parameter must be non-negative. If the _width_ parameter is not large enough to represent the value of _r_ it is implicitly increased as needed. The displayed value is rounded to the nearest decimal equivalent with this accuracy. In the case of a tie, the display value is rounded to the next larger value.

The string **realstr** (_r_, _width_ ) is the same as the string **frealstr** (_r_, _width_, _defaultfw_ ) when _r_ =0 or when 1e-3 < _abs_ (_r_ ) < 1e6, otherwise the same as **erealstr** (_r_, _width_, _defaultfw_, _defaultew_), with the following exceptions. With _realstr_, trailing fraction zeroes are omitted, and the decimal point is omitted if the entire fraction is zero. (These omissions take place even if the exponent part is printed.) If an exponent is printed, any plus sign and leading zeroes are omitted. Thus, whole number values are in general displayed as integers.

_Defaultfw_ is an implementation-defined number of fractional digits to be displayed. For most implementations, _defaultfw_ will be 6. 

_Defaultew_ is an implementation-defined number of exponent digits to be displayed. For most implementations, _defaultew_ will be 2.

The **realstr** function approximates the inverse of **strreal**, although round-off errors keep these from being exact inverses.


##See also
the **[erealstr.html](erealstr)**, **[frealstr.html](frealstr)**, **[strreal.html](strreal)**, **[intstr.html](intstr)** and **[strint.html](strint)** functions.

