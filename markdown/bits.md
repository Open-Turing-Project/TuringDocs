
# bits

## Syntax
**bits** (_expn_, _subrange_)

## Description
The **bits** operator is used to extract a sequence of bits from a natural (non-negative) number expression. The bits are numbered from right to left as 0, 1, 2 &#133;


## Example
Set bits 2 and 1 (third and second from the right) in the variable _d_ to be 01. We first set _b_ to be the bit string 1100.

        type T12 : 1 .. 2           % Use to specify bit range
        var d : nat2 := 2#1100      % Two byte natural number
        % At this point bits(d, T12) = 2#10
        bits (d, T12) := 2#01
        % At this point d = 2#1010
## Example
Set bit 7 in variable _n_ to be 1. As a result, _n_ will equal 2#10000000.

        var n : nat1 := 0       % A one byte variable set to zero
        bits (n, 7) := 1        % n now contains the pattern 10000000
## Details
The form of _subrange_ must be one of:


(a)   _typeSpec_   _% Subrange type_  
(b)   _compileTimeIntegerExpression_  


In form (a) the subrange type specifies a range from _L_ to _M_ (for _least_ and _most_ significant). This is a little confusing because the subrange is written _L_ .. _M_ with _L_ on the left and _M_ on the right, but in a number, the least significant bit is on the right and the most significant is on the left. The subrange type can be either the name of a type, for example _T12_, or an explicit subrange, for example 3 .. 7. The values in the explicit subrange must be compile time values.

Form (b) represents the range _n_ .. _n_ where _n_ is the non-negative value of the expression. In other words, both _L_ and _M_ equal _n_. The expression can be any non-negative integer value or natural number value.

If the expression _expn_ is a variable reference, the **bits** operation can be assigned to, but cannot be passed to, a **var** parameter. For example, in the above, **bits** (_d_, _T12_) has the value 2#01 assigned to it. For this assignment to be allowed, the expression _expn_ must be a natural number type (**nat**, **nat1**, **nat2** or **nat4**).


## See also
_[explicitIntegerConstant](explicitintegerconstant.html)_ (for description of constants such as 16#FFFF) and the following functions that convert one type to another in a machine-independent manner: **[ord](ord.html)**, **[chr](chr.html)**, **[intstr](intstr.html)**, **[strint](strint.html)**, **[natstr](natstr.html)**, and **[strnat](strnat.html)**. See also **[shr](shr.html)** and **[shl](shl.html)** (shift right and left).

