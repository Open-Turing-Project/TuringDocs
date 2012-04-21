
#set

##Syntax
A *setType* is:
 **set** **of** *typeSpec*



##Description
Each value of a **set** type consists of a set of elements. The *typeSpec*,* *which is restricted to being a subrange or an enumerated type, gives the type of these elements.



##Example
The *smallSet *type is declared so that it can contain any and all of the values 0, 1 and 2. Variable *s* is initialized to be the set containing 1 and 2.


        type smallSet : set of 0 .. 2
        var s : smallSet := smallSet ( 0, 1 )
        
        if 2 in s then 
##Details
In classical mathematics, the set consisting of 0 and 1 is written as {0,1}. This is written in Turing using a *set constructor* consisting of the name of the set type followed by a parenthesized list of elements, which in this example is *smallInt* (0,1). The empty set is written, for example, as *smallInt *(). The full set is written as *smallInt *(**all**), so *smallInt *(**all**) = *smallInt *(0,1,2).
Sets can be assigned as a whole (to sets of an equivalent type). See also *equivalence* of types.
The operators to combine two sets are union (+), intersection (*), set subtraction (-), equality (=), inequality (**not=**), subset (<=), strict subset (<), superset (>=), strict superset (>), and **xor** ("exclusive or" also known as symmetric difference). Only sets with equivalent types (equal bounds on their index types) can be combined by these operators. The operators which determine if an element is, or is not, in a set are **in** and **not** **in**. For example, the test to see if 2 is in set *s* is written in the above example as: 2 **in** *s*.
The *indexType* of a **set** type must contain at least one element. For example, the range 1 .. 0 would not be allowed. See also *indexType*. In Turing, sets are limited to at most 31 elements. OOT allows a very large number of elements.



##Details
It is illegal to declare an "anonymous" set. The only legal declaration for an **set** is in a type declaration. For example, the following is now illegal:
Given that there is no (easy) way of generating a set value without it being a named type, this should not impact any but the most bizarre code.


        var a : array 1 .. 10 of set of 0 .. 3
##See also
*[precedence.html](precedence)* of operators for the order of applying [](set) operations.


