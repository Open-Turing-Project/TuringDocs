
# strreal

## Syntax
**strreal** ( _s_ : **string** ) : **real**

## Description
The **strreal** function is used to convert a string to a **real** number. For example, **strreal** ("2.5e1") will produce an approximation to the number 25.0.

String _s_ must consist of a possibly null sequence of blanks, then an optional plus or minus sign and finally an explicit unsigned real or integer constant.

The **realstr**, **erealstr** and **frealstr** functions approximate the inverse of **strreal**, although round-off errors keep these from being exact inverses.


## See also
**[realstr](realstr.html)**, **[erealstr](erealstr.html)**, **[frealstr](frealstr.html)**, **[intstr](intstr.html)** and **[strint](strint.html)** functions.

