
#bits

##Syntax
**bits** (*expn*, *subrange*)



##Description
The **bits*** *operator is used to extract a sequence of bits from a natural (non-negative) number expression. The bits are numbered from right to left as 0, 1, 2 



##Example
Set bits 2 and 1 (third and second from the right) in the variable *d* to be 01. We first set *b* to be the bit string 1100.


        type T12 : 1 .. 2           % Use to specify bit range
        var d : nat2 := 2#1100      % Two byte natural number
        % At this point bits(d, T12) = 2#10
        bits (d, T12) := 2#01
        % At this point d = 2#1010
##Example
Set bit 7 in variable *n* to be 1. As a result, *n* will equal 2#10000000.


        var n : nat1 := 0       % A one byte variable set to zero
        bits (n, 7) := 1        % n now contains the pattern 10000000
##Details
The form of *subrange* must be one of:
 (a) *typeSpec* *% Subrange type* (b) *compileTimeIntegerExpression*
In form (a) the subrange type specifies a range from *L* to *M* (for *least* and *most* significant). This is a little confusing because the subrange is written *L* .. *M* with *L* on the left and *M* on the right, but in a number, the least significant bit is on the right and the most significant is on the left. The subrange type can be either the name of a type, for example *T12*, or an explicit subrange, for example 3 .. 7. The values in the explicit subrange must be compile time values.
Form (b) represents the range *n* .. *n* where *n* is the non-negative value of the expression. In other words, both *L* and *M* equal *n*. The expression can be any non-negative integer value or natural number value.
If the expression *expn* is a variable reference, the **bits** operation can be assigned to, but cannot be passed to, a **var** parameter. For example, in the above, **bits** (*d*, *T12*) has the value 2#01 assigned to it. For this assignment to be allowed, the expression *expn* must be a natural number type (**nat**, **nat1**, **nat2** or **nat4**).



##See also
*[explicitintegerconstant.html](explicitIntegerConstant)* (for description of constants such as 16#FFFF) and the following functions that convert one type to another in a machine-independent manner: **[ord.html](ord)**, **[chr.html](chr)**, **[intstr.html](intstr)**, **[strint.html](strint)**, **[natstr.html](natstr)**, and **[strnat.html](strnat)**. See also **[shr.html](shr)** and **[shl.html](shl)** (shift right and left).


