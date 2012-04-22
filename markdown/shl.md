
#shl

##Syntax
_A_ **shl** _B_



##Description
The **shl** (shift left) operator produces the value of _A_ shifted _B_ bits to the left. Both A and B must be non-negative integers (natural numbers).



##Example
Assign the base 2 value 11 to _i_ and then shift it left by 2 places and assign the resulting base 2 value 1100 to _j_.


        var i, j : int
        i := 2 # 11     % 2#11 = 3 (base 10)
        j := i shl 2        % j becomes 2#1100 = 12 (base 10)
##Details
The **shl** operator is defined mathematically (in a machine-independent way) as follows:  _A_ **shl** _B_ = _A_ __*__ ( 2**_B _). Overflow occurs when the result exceeds the maximum value of the **nat4** (4-byte natural number) type.
Value _A_ can be of any integer type (as long as it is non-negative) or any natural number type.
The **shl** operator has the same precedence as the * operator.



##See also
**[shr.html](shr)** (shift right), **[or.html](or)**, **[and.html](and)** and **[xor.html](xor)**, which also are bit manipulation operators that act on non-negative values. See also **[explicitintegerconstant.html](explicitIntegerConstant)** which describes values such as 2#1100.


