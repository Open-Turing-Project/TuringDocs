
#indexType

##Syntax
An *indexType* is one of:
 (a)*subrangeType* (b)*enumeratedType* (c)*namedType* *% Which is a subrange or enumerated type* (d)**char** (e)**boolean**



##Description
An index type defines a range of values that can be used as an **array** subscript, as a case selector, as a selector (tag) for a **union** type, or as the base type of a **set** type.



##Example



        var z : array 1 .. 9 of real    % 0..9 is an index type
        type smallSet : set of 0 .. 2   % 0..2 is an index type
