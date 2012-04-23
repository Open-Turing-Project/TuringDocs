
# int

## Syntax
**int**

## Description
The **int** (integer) type has the values &#133; 2, 1, 0, 1, 2 &#133; Integers can be combined by various operators such as addition (+) and multiplication (*). Integers can also be combined with **real** numbers, in which case the result is generally a real number. An integer can always be assigned to a real variable, with implicit conversion to **real**.


## Example


        var counter, i : int
        var j : int := 9
        var tax := 0        % The type is implicitly int because 0 is an integer
## Details
See also _explicitIntegerConstant_. The **real** type is used instead of **int** when values have fractional parts as in 16.837. See the **real** type for details.

The operators on integers are +, -, * (multiply), **div** (truncating integer division), **mod** (integer remainder), ** (exponentiation), as well as comparisons (+, **not=**, >, >=, <, <=). The operators **and**, **or** and **xor** can be applied to non-negative integer values. The bit-wise boolean result is produced as an integer (actually, as a natural number). The **shr** (shift right) and **shl** (shift left) operators are also introduced.

Real numbers can be converted to integers using **ceil** (ceiling), **floor**, and **round** (see descriptions of these functions). Integers can be converted to real numbers using **intreal**, but in practice this is rarely used, because an integer value used in place of a real value will be automatically converted to real.

Integers can be converted to strings and back using **intstr** and **strint**. Integers can be converted to corresponding ASCII (or EBCDIC) characters using **chr** and **ord**. See the descriptions of these functions.

Pseudo-random sequences of integers can be generated using **randint**. See **randint**.

In current implementations of Turing, the range of integers is from -2147483647 to 2147483647. In other words, the maximum size of integer is 2**31 - 1. See **maxint**. This range exists because integers are stored in 4 bytes. The remaining negative value, -2147483648 records uninitialization. The types **int1**, **int2** and **int4** specify integers that fit into 1, 2 or 4 bytes. The **int**_n_ types (**int1**, **int2** and **int4**) are not checked for initialization and allow all their bit patterns as numbers.

The natural number type **nat** allows only the non-negative values: 0,1,2,3,&#133; Natural number values can be used whenever integer values are expected and vice versa, given that the value does not exceed the range of the expected type.


## See also
**[nat](nat.html)** and **[int]()**_n_.

