
#intn

##Syntax
 (a)**int1**  *% 1-byte integer* (b)**int2**  *% 2-byte integer* (c)**int4**  *% 4-byte integer*

##Description
The **int*n*** (*n*-byte integer) types are machine-dependent types that occupy a specified number of bytes. By contrast, the **int** type is in principle a machine-independent and mathematical type (it overflows, however, when the value is too large or small, that is, when the value does not fit into 4 bytes).

##Example

        var counter1 : int1 % Range is -128 .. 127
        var counter2 : int2 % Range is -32768 .. 32767
        var counter4 : int4 % Range is -2147483648 .. 2147483647
##Details
In current implementations of Turing, the range of the **int** is -2147483647 to 2147483647, which means that the **int4** type allows one more value, -2147483648. This extra value is used in **int** to represent the state of being initialized. The **int*n*** types allow use of all possible values that fit into *n* bytes and thereby cannot check for initialization.
The **int*n*** types are like the C language types *short int*, *int*, and *long int*, except that the number of bytes occupied by the C types depends on the particular C compiler.

##See also
the **[nat.html](nat)***n *types which are *n* byte natural (non-negative) values. See also **[int.html](int)** and **[nat.html](nat)**.
