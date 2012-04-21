
#indirection

##Syntax
*targetType* **@** ( *expn* )

##Description
The indirection operator @ is used to access values that lie at absolute machine addresses in the computer's memory. This is dangerous and implementation-dependent and can cause arbitrary corruption of data and programs.

##Example
Copy the byte value at memory location 246 into *b *and then set that memory byte to zero.
        var b : nat1            % One byte natural number
        b := nat1 @ (246)
        nat1 @ (246) := 0
##Details
The form of *targetType* must be one of:
In form (a) the beginning identifier *id* must be the name of a module, monitor or class that exports the *typeId*. Each of *numberOfCharacters* and *maximumLength* must be compile time integer expressions. These are the same target types as in type cheats.
The indirection operator @ takes an integer as an address. This value must fit in the range of **addressint**. See **addressint**. See also **pointer** types and the ^ operator (which accesses objects located by pointers).
        (a) [ id . ] typeId
        (b) int, int1, int2 or int4
        (c) nat, nat1, nat2 or nat4
        (d) boolean
        (e) char [ ( numberOfCharacters ) ]
        (f) string [ ( maximumLength ) ]
        (g) addressint
##See also
**[cheat.html](cheat)**. See also *[explicitintegerconstant.html](explicitIntegerConstant)* (which explains how to write hexadecimal constants, which are often used for addresses).
