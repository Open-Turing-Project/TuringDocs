
#realn

##Syntax
 (a)**real4**  *% 4-byte real number* (b)**real8**  *% 8-byte real number*

##Description
The **real*n*** (*n*-byte real number) types are machine-dependent types that occupy a specified number of bytes. By contrast, the **real** type is, in principle, a machine-independent and mathematical type (however, it overflows when the exponent of the value is too large or small and it has only a limited amount of precision).

##Example

        var width : real4
        var height : real8
##Details
Turing implements the type **real**  using 8 byte floating point representation. This provides 14 to 16 decimal digits of precision and an exponent range of at least -38 .. 38. The PC and Macintosh versions of Turing have 16 decimal digits of accuracy because they use IEEE standard floating point representation.
This implies that **real8** and **real** are essentially the same type, so in practice there is no advantage to using **real8** rather than **real**. However, **real4** has the advantage of occupying half as much space (with correspondingly reduced precision).
Arithmetic for all real types (**real**, **real4** and **real8**) is carried out with the accuracy and exponent range of 8-byte reals.
The type **real4** is sometimes called *single precision* (because it occupies a single 4-byte word) and **real8** is sometimes called *double precision*.
