
# intn

## Syntax

-  **int1**     _% 1-byte integer_   
-  **int2**     _% 2-byte integer_   
-  **int4**     _% 4-byte integer_

## Description
The **int_n_** (_n_-byte integer) types are machine-dependent types that occupy a specified number of bytes. By contrast, the **int** type is in principle a machine-independent and mathematical type (it overflows, however, when the value is too large or small, that is, when the value does not fit into 4 bytes).


## Example


        var counter1 : int1 % Range is -128 .. 127
        var counter2 : int2 % Range is -32768 .. 32767
        var counter4 : int4 % Range is -2147483648 .. 2147483647
## Details
In current implementations of Turing, the range of the **int** is -2147483647 to 2147483647, which means that the **int4** type allows one more value, -2147483648. This extra value is used in **int** to represent the state of being initialized. The **int_n_** types allow use of all possible values that fit into _n_ bytes and thereby cannot check for initialization.

The **int_n_** types are like the C language types _short int_, _int_, and _long int_, except that the number of bytes occupied by the C types depends on the particular C compiler.


## See also
the **[nat](nat.html)**_n_ types which are _n_ byte natural (non-negative) values. See also **[int](int.html)** and **[nat](nat.html)**.

