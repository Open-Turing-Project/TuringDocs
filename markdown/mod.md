
# mod

## Syntax
**mod**

## Description
The **mod** (_modulo_) operator produces the modulo of one number with another. In other words, the result is always a number between 0 and the second operand. If both operands are positive, the result is identical to the remainder operator. For example, 7 **mod** 2 produces 1 and 12 **mod** 5 produces 3.


## Example
In this example, _hours_ is the current time. It is moved back and forth by a random amount, but the final result must always be between 1 and 12 (the mod operation produces a number between 0 and 11 and then 0 becomes 12).

        var hours : int := 12
        var hoursPassed : int
        put "The time is now ", hours, " o'clock"
        loop
            randint (hoursPassed, -12, 12)
            exit when hoursPassed = 0
            if hoursPassed < 0 then 
                put hoursPassed, " hours before " ..
            else
                put hoursPassed, " hours later " ..
            end if
            put hours, " o'clock" ..
            hours := (hours + hoursPassed) mod 12
            if hours = 0 then 
                hours = 12
            end if
            put " it was ", hours, " o'clock"
        end loop
## Details
If the second operand is positive, then the result is always non-negative. Likewise, if the second operand is negative, then the result is always non-positive. If both  operands are negative, the result is the same as the remainder operator.


## See also
_[infix](infix.html) operators_, _[precedence](precedence.html)_ of operators and the **[rem](rem.html)** and **[div](div.html)** operators.

