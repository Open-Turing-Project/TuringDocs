
#xor

##Syntax
*A* **xor** *B*



##Description
When applied to set values, **xor** (symmetric difference) yields a set which includes element *e* if and only if *e* is contained in exactly one of the operands. When applied to non-negative integer values, **xor** yields a natural number whose bits are the xor of the corresponding bits of the operands. Both operands *A* and *B *are evaluated.



##Example
Status *s3* will contain elements that are in *s1* or *s2* but not both. Here **xor** is a set operator. See **enum** and **set** types for explanations of these types.


        type status : enum (ready, sending, repeating)
        type statusSet : set of status
        var s1, s2, s3 : statusSet
        s1 := statusSet ( status.read, status.sending )
        s2 := statusSet ( status.read, status.repeating )
        
        s3 := s1 xor s2     % Same as (s1 + s2) - (s1 * s2)
##Example
Each bit of natural number *n3* will be 1 if exactly one of the corresponding bits of *n1* and *n2* are 1. For example, if *n1* = 2#110 (6) and *n2* = 2#010 (2), *n3* will be set to 2#100 (4). Here **xor** is an integer operator.


        var n1, n2, n3 : nat
        
        n3 := n1 xor n2
##Details
The **xor** operator is not a short circuit operator; in other words, both of its operands are always evaluated. The precedence of **xor** is the same as that of plus (+).



##See also
**[set.html](set)**. See also *[explicitintegerconstant.html](explicitIntegerConstant)* which describes values such as 2**#**110.


