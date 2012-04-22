
#sizeof

##Syntax
**sizeof** (_typeNameOrVariableReference_)



##Description
The **sizeof** attribute is used to find the number of bytes used to represent the type or variable. This is implementation-dependent (dirty).



##Example
The size of **int2** and **nat2** is 2.


        var i : int2
        const nat2size := sizeof ( i )  % size is 2
##Details
The _typeNameOrVariableReference_ must be the name of a user-defined type, a variable reference, a basic type (such as **real**), or a constant.
In principle, **sizeof** returns the number of _storage units_ which would not necessarily be 8-bit bytes. For example, in some older machines, such as the CDC 6000 series, the storage units are 60 bit words. However, almost all modern computers use 8-bit bytes so these are the units of **sizeof**.
Beware that sizes may reflect alignment constraints in the underlying computer. For example, string sizes may be rounded up to even values (2-byte word alignments).



##See also
the _[indirection.html](indirection) operator_ @, **[cheat.html](cheat)**, _[explicitintegerconstant.html](explicitIntegerConstant)_ (how to write hexadecimal constants), and pointers (in particular [unchecked.html](unchecked) pointers). See also **[addr.html](addr)**, which returns the address of a variable.


