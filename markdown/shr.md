
# shr

## Syntax
_A_ **shr** _B_

## Description
The **shr** (shift right) operator produces the value of _A_ shifted _B_ bits to the right. Both A and B must be non-negative integers (natural numbers).


## Example
Assign the base 2 value 1101 to _i_ and then shift it right by 2 places and assign the resulting base 2 value 11 to _j_.

        var i, j : int
        i := 2 # 1101   % 2#1101 = 13 (base 10)
        j := i shr 2        % j becomes 2#11 = 3 (base 10)
## Details
The **shr** operator is defined mathematically (in a machine- independent way) as follows:  _A_ **shr** _B_ = _A_ **div** 2**_B_.

Value _A_ can be of any integer type (as long as it is non-negative) or any natural number type.

The **shr** operator has the same precedence as the * operator.


## See also
**[shl](shl.html)** (shift left), **[or](or.html)**, **[and](and.html)** and **[xor](xor.html)**, which also are bit manipulation operators that act on non-negative values. See also **[explicitIntegerConstant](explicitintegerconstant.html)** which describes values such as 2#1101.

