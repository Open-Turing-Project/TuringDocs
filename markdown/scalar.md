
#scalar

##Syntax
A *scalarType* is one of:
 (a)*standardType* *% int*,* real*,* boolean or string* (b)*enumeratedType* (c)*subrangeType* (d)*pointerType* (e)**char** (f)**int***n* (g)**nat***n* (h)**real***n* (i)*namedType*  *% Must name one of the above types*



##Description
Scalar types are sometimes called *simple* or *primitive* types. The non-scalar types are strings, sets, arrays, records, unions and in OOT **char**(*n*). They are defined using scalar types. Scalar types are passed by value to parameters, while non-scalars are passed by reference (by passing an implicit pointer to the non-scalar value).



##Description
In current Turing implementations scalar types are directly represented in 1, 2, 4 or 8 bytes in a computer's memory. This implies that they can be efficiently passed by value.


