
#shr

##Syntax
*A* **shr** *B*

##Description
The **shr** (shift right) operator produces the value of *A* shifted *B* bits to the right. Both A and B must be non-negative integers (natural numbers).

##Example
Assign the base 2 value 1101 to *i* and then shift it right by 2 places and assign the resulting base 2 value 11 to *j*.
        var i, j : int
        i := 2 # 1101   % 2#1101 = 13 (base 10)
        j := i shr 2        % j becomes 2#11 = 3 (base 10)
##Details
The **shr** operator is defined mathematically (in a machine- independent way) as follows:  *A* **shr** *B* = *A* **div** 2***B*.
Value *A* can be of any integer type (as long as it is non-negative) or any natural number type.
The **shr** operator has the same precedence as the * operator.

##See also
**[shl.html](shl)** (shift left), **[or.html](or)**, **[and.html](and)** and **[xor.html](xor)**, which also are bit manipulation operators that act on non-negative values. See also **[explicitintegerconstant.html](explicitIntegerConstant)** which describes values such as 2#1101.
