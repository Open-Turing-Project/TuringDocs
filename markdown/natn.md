
#natn

##Syntax
 (a)**nat1**  *% 1-byte natural number* (b)**nat2**  *% 2-byte natural number* (c)**nat4**  *% 4-byte natural number*



##Description
The **nat*n*** (*n*-byte natural number) types are machine-dependent  types that occupy a specified number of bytes. By contrast, the **nat** type is in principle a machine-independent and mathematical type (it overflows, however, when the value is too large or small, that is, when the value does not fit into 4 bytes).



##Example



        var counter1 : nat1     % Range is 0 .. 255
        var counter2 : nat2     % Range is 0 .. 65536
        var counter4 : nat4     % Range is 0 .. 4294967295
##Details
In Turing, the range of the **nat** is 0 to 4294967294, which means that the **nat4** type allows one more value, 4294967295. This extra value is used in **nat** to represent the state of being uninitialized. The **nat*n*** types allow use of all possible values that fit into *n* bytes and thereby eliminates checking for initialization.
The **nat*n*** types are like the C language types *short unsigned*, *unsigned*, and *long unsigned*, except that the number of bytes occupied by the C types depends on the particular C compiler.



##See also
the **[int.html](int)*n**** *types which are *n* byte integer values. See also **[nat.html](nat)** and **[int.html](int)**.


