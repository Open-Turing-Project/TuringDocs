
#addressint

##Syntax
**addressint**

##Description
The **addressint** (address integer) type is an integer type whose range of value is the same as that of the underlying computer. This range is, by its nature, implementation-dependent. On 32-bit architectures, it is commonly the same range as **nat4** (4-byte natural number).

##Example
Record *r* contains three fields, one of which has type **char**(28). Variable *a* is an integer whose range of values is the same as the addresses of the underlying computer. This assigns *B* to the seventh character of a record of type *r* which is assumed to be located at absolute address *a*.
        type r :
            record
                i : int
                c28 : char (28)
                c11 : char (11)
            end record
        var a : addressint      % An integer
                           % a is assigned an integer value
        r @ (a) . c28 (7) := 'B'        % Use indirection operator @
##Details
Although **addressint** is called an integer type, it is commonly equivalent to a natural type such as **nat4** (for 32-bit machines).
Be careful not to confuse **addressint** with pointer types. In low level languages such as assembler and C, addresses and pointers are the same. In Turing, however, a pointer is a high level concept that is more abstract than a machine address. A Turing pointer is a reference to an object, and the representation of this reference depends upon the implementation. In current Turing implementations, pointers (which are by default checked) are represented as a time stamp (a unique number) together with an address. The time stamp is used to make sure that the pointer actually locates an object. There are also **unchecked** pointers. An **unchecked** pointer's internal representation is a machine address. You can use type cheats (a dangerous feature) to translate between **addressint** and unchecked pointers. This is meaningful in current implementations.

##See also
the [indirection.html](indirection operator @), **[cheat.html](cheat)**, *[explicitintegerconstant.html](explicitIntegerConstant) *(how to write hexadecimal constants), and **[pointer.html](pointer)** type (in particular unchecked pointer type). See also **[addr.html](addr)**, which returns the address of a variable.
