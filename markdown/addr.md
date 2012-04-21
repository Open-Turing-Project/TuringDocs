
#addr

##Syntax
**addr** (*reference*)

##Description
The **addr** attribute is used to find the integer address of a variable or non scalar constant. This is implementation-dependent. This address may be used in an indirection operation **@**.

##Example
Set *a* to be the address of *x*.
        var x : real
        var a : addressint := addr (x)
##Details
The value of the address produced by **addr** is of type **addressint**, an integer type whose range is that of the underlying memory addresses.
The concept of an address is implementation-dependent. For example, an optimizing compiler could determine that a variable does not require space because the program could be computed without the variable with no change in output. However, in most implementations, types have a predictable size and variables of that type occupy that number of bytes in memory.

##See also
the [indirection.html](indirection operator @), **[cheat.html](cheat)**, *[explicitintegerconstant.html](explicitIntegerConstant) *(how to write hexadecimal constants), and **[pointer.html](pointer)** type (in particular unchecked pointer type). See also **[sizeof.html](sizeof)**, which returns the size of a variable.
