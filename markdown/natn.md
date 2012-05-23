
# natn

## Syntax
(a) **nat1**     _% 1-byte natural number_   (b) **nat2**     _% 2-byte natural number_   (c) **nat4**     _% 4-byte natural number_

## Description
The **nat_n_** (_n_-byte natural number) types are machine-dependent  types that occupy a specified number of bytes. By contrast, the **nat** type is in principle a machine-independent and mathematical type (it overflows, however, when the value is too large or small, that is, when the value does not fit into 4 bytes).


## Example


        var counter1 : nat1     % Range is 0 .. 255
        var counter2 : nat2     % Range is 0 .. 65536
        var counter4 : nat4     % Range is 0 .. 4294967295
## Details
In Turing, the range of the **nat** is 0 to 4294967294, which means that the **nat4** type allows one more value, 4294967295. This extra value is used in **nat** to represent the state of being uninitialized. The **nat_n_** types allow use of all possible values that fit into _n_ bytes and thereby eliminates checking for initialization.

The **nat_n_** types are like the C language types _short unsigned_, _unsigned_, and _long unsigned_, except that the number of bytes occupied by the C types depends on the particular C compiler.


## See also
the **[int](int.html)_n_** types which are _n_ byte integer values. See also **[nat](nat.html)** and **[int](int.html)**.

