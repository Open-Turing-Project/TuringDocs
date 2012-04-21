
#natstr

##Syntax
**natstr** ( *n *: **nat** [* *,* width* : **int** [, *base* : **int** ] ] ) : **string**

##Description
The **natstr** function is used to convert a natural number to a string. The string is equivalent to *n*, padded on the left with blanks as necessary to a length of *width*,* *written in the given number* base*. For example, **natstr** (14, 4, 10)="*bb*14" where *b* represents a blank. The *width* and *base *parameters are both optional. It they are omitted, the string is made just long enough to hold the value and the number base is 10. For example, **natstr** (23) = "23".
The *width* parameter must be non-negative. If *width* is not large enough to represent the value of *i*, the length is automatically increased as needed.
The string returned by **natstr** is of the form:
 {blank}digit{digits}
where {blank} means zero or more blanks and digit{digit} means one or more digits. The leftmost digit is either non-zero, or a single zero digit; in other words, leading zeros are suppressed.
The letters A, B, C  are used to represent the digit values 10, 11, 12,  The *base *must be in the range 2 to 36 (36 because there are ten digits and 26 letters). For example, **natstr** (255, 0, 16) = "FF".
The **natstr** function is the inverse of **strnat**, so for any natural number *n*, **strnat** ( **natstr**(*n*) ) = *n*.

##See also
**[chr.html](chr)**, **[ord.html](ord)** and **[strnat.html](strnat)** functions. See also the **[intstr.html](intstr)** and **[strint.html](strint)** functions. See also *[explicitintegerconstant.html](explicitIntegerConstant)* for the way to write values in base 2 and base 16 in a [program.html](program).
