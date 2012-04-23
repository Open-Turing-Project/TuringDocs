
#nat

##Syntax
**nat**


##Description
The **nat** (natural number) type has the values 0, 1, 2, 3 &#133; Natural numbers can be combined by various operators, such as addition (+) and multiplication (*). Natural numbers can be combined with integers (type **int**), in which case the result is an integer. Natural numbers can also be combined with **real** numbers, in which case the result is generally a real number. Natural numbers can always be assigned to real variables, with implicit conversion to **real**.


##Example


        var counter : nat
        var j : nat := 9
##Details
See also _explicitIntegerConstant_. The **nat** type is used instead of **int** when the values are known to be non-negative.

The Turing operators on natural numbers are the same as those for integers: +, -, * (multiply), **div** (truncating integer division), **mod** (integer remainder), ** (exponentiation), as well as comparisons (+, **not=**, >, >=, <, <=). The operators **and**, **or** and **xor** to be applied to natural number values. The bit-wise boolean result is produced as a natural number. The **shr** (shift right) and **shl** (shift left) operators are also introduced.

In the current implementation, the range of natural numbers is from 0 to 4294967294. In other words, the maximum value of a natural number is 2**32 - 2. This range exists because natural numbers are stored in 4 bytes. The types **nat1**, **nat2** and **nat4** specify natural numbers that fit into 1, 2 or 4 bytes.

Explicit constants such as 213 and 0 are considered to be integers. As a result the type of _tax_ in this declaration is **int**:

Natural number values can be used whenever integer values are expected and vice versa, given that the value does not exceed the range of the expected type.

When integer and natural numbers are combined using a binary operator such as +, the result is an integer. This means, for example, that if _counter_ is a natural number, _counter_ + 1 is considered to be an integer. As long as the result fits into the range that is the intersection of the ranges of **int** and **nat**, the result will be as expected. Anomalies occur when the result is (or would be) greater than the largest integer (**maxint**=2147483647). For example, if natural number _n_ is greater than **maxint**, the expression _n_ + 1 will overflow, because its result is an **int** (because 1 is an **int**). To avoid this problem, you must be careful that both operands are natural numbers. 

Suppose we have this declaration:

We can safely compute _n_ + _natOne_ because both operands have type **nat**.

Natural numbers can be converted to real numbers using **natreal**, but in practice this is rarely used, because a natural value used in place of a real value will be automatically converted to real.

Natural numbers can be converted to strings and back using **natstr** and **strnat**.

In the C language, a natural number is said to be "unsigned".

        var tax := 0    % The type is int        const natOne : nat := 1
##See also
**[maxnat.html](maxnat)**, **[int.html](int)**, **[](nat)**_n_, **[int.html](int)**_n_, **[natstr.html](natstr)**, **[strnat.html](strnat)** and **[natreal.html](natreal)**.

