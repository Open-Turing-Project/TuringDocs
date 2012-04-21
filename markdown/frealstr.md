
#frealstr

##Syntax
**frealstr** ( *r* : **real**, *width*,* fractionWidth *: **int** ) : **string**

##Description
The **frealstr** function is used to convert a real number to a string. For example, **frealstr** (2.5e1, 5, 1)="*b*25.0"  where *b* represents a blank. The string is an approximation to *r*, padded on the left with blanks as necessary to a length of *width*.
The number of digits of the fraction to be displayed is given by *fractionWidth*.
The *width* must be non-negative. If the *width* parameter is not large enough to represent the value of *r*, it is implicitly increased as needed.
The *fractionWidth*must be non-negative. The displayed value is rounded to the nearest decimal equivalent with this accuracy. In the case of a tie, the value is rounded to the next larger value. The result string is of the form:
If the leftmost digit is zero, then it is the only digit to the left of the decimal point.
The **frealstr** function approximates the inverse of **strreal**, although round-off errors keep these from being exact inverses.
                {blank} [-]{digit}. {digit}
##See also
the **[erealstr.html](erealstr)**, **[realstr.html](realstr)**, **[strreal.html](strreal)**, **[intstr.html](intstr)** and **[strint.html](strint)** functions.
