
# explicitIntegerConstant

## Syntax
An _explicitIntegerConstant_ is a sequence of one or more decimal digits (0 to 9) optionally preceded by a plus or minus sign. This is an alternate form that specifies a number base (such as base 2 or base 16).

## Example
In the following, the explicit integer constants are 0, 115 and 5.

        var count : int := 0
        const height := 115
        
        count := height - 5
## Details
In current implementations of Turing, the range of the **int** (**integer**) type is from -2147483647 to 2147483647. In other words, the maximum size of integer is 2**31 - 1. This is the range that fits into four bytes, with one pattern left over (the largest negative 4-byte number) to represent the uninitialized value. See **maxint**.

Values can be written in base 2 or 16 or any other base in the range 2 to 36 (36 because there are 10 digits and 26 letters). This form begins with the base, such as 16, then #, and then the value written in that base, for example, 16#A has the value 10. The letters a, b, c &#133; represent the digit values 10, 11, 12 &#133; Capital letters A, B, C &#133; can be used instead of lower case. Here are some examples.


2#1     = 1     (Base 2)  
2#11     = 3     (Base 2)  
16#a     = 10     (Base 16)  
16#FF     = 255     (Base 16)  
16#FFFF   = 32767   (Base 16)  
8#10     = 8     (Base 8)  


Here is an example of using these:

You should be careful to avoid confusion about patterns such as 16#FFFF. It is tempting to think that this is the value 1, because the bit pattern (2-byte two's complement internal representation) for 1 is the same as the bit pattern for 16#FFFF = 32767. However, the value (as opposed to the internal representation) of 1 and 32767 are different.

        const maxnat1 := 16#FF      % Largest 1-byte natural number
        const maxint2 := 16#7FFF    % Largest 2-byte integer
## See also
**[int](int.html)**, **[maxint](maxint.html)** (the largest integer value), **[nat](nat.html)** (positive values  only) and **[int](int.html)_n_** (_**n**_**-**byte integers). See also **[intstr](intstr.html)** and **[natstr](natstr.html)** which convert integer and natural number values to corresponding character strings in any base, for example **[intstr](intstr.html)** (4, 0, 2) = "100".

