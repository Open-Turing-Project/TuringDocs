
#intstr

##Syntax
**intstr** ( *i *: **int** [ ,* width* : **int** [ , *base* : **int** ] ] ) : **string**



##Description
The **intstr** function is used to convert an integer to a string. The string is equivalent to *i*, padded on the left with blanks as necessary to a length of *width*,* *written in the given number* base*. For example, **intstr** (14, 4, 10)="*bb*14" where *b* represents a blank. The *width* and *base *parameters are both optional. If they are omitted, the string is made just long enough to hold the value, and the number base is 10. For example, **intstr** (14, 4) = "bb14" and **intstr** (23 ) = "23". 
The *width* parameter must be non-negative. If *width* is not large enough to represent the value of *i*, the length is automatically increased as needed.
The string returned by **intstr** is of the form:
 {blank}[-]digit{digits}
where {blank} means zero or more blanks, [-] means an optional minus sign, and digit{digit} means one or more digits. The leftmost digit is either non-zero or else a single zero digit. In other words, leading zeros are suppressed.
The letters A, B, C  are used to represent the digit values 10, 11, 12,  The *base *must be in the range 2 to 36 (36 because there are ten digits and 26 letters). For example, **intstr** (255, 0, 16) = "FF".
The **intstr** function is the inverse of **strint**, so for any integer *i*, 


        strint ( intstr (i)) = i.
##See also
**[chr.html](chr)**, **[ord.html](ord)** and **[strint.html](strint)** functions. See also the **[natstr.html](natstr)** and **[strnat.html](strnat)** functions. See also *explicitIntegerConstants* for the way to write non base 10 values in a [program.html](program).


