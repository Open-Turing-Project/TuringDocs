
# exp

## Syntax
**exp** (_r_ : **real**) : **real**

## Description
The **exp** function is used to find e to the power r, where e is the natural base and r is the parameter to **exp**. For example, **exp** (0) returns 1 and **exp** (1) returns the value of e.


## Example
This program prints out the exponential values of 1, 2, 3, &#133; up to 100.

        for i : 1 .. 100
            put "Exponential of ", i, " is ", exp (i)
        end for
## See also
**[ln](ln.html)** (natural logarithm function).

See also predefined unit **[Math](mathmodule.html)**.

