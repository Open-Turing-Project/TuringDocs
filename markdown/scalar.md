
# scalar

## Syntax
A _scalarType_ is one of:   
-  _standardType_   _% int_, _real_, _boolean or string_   
-  _enumeratedType_   
-  _subrangeType_   
-  _pointerType_   
-  **char**   
-  **int**_n_   
-  **nat**_n_   
-  **real**_n_   
-  _namedType_     _% Must name one of the above types_

## Description
Scalar types are sometimes called _simple_ or _primitive_ types. The non-scalar types are strings, sets, arrays, records, unions and in OOT **char**(_n_). They are defined using scalar types. Scalar types are passed by value to parameters, while non-scalars are passed by reference (by passing an implicit pointer to the non-scalar value).


## Description
In current Turing implementations scalar types are directly represented in 1, 2, 4 or 8 bytes in a computer's memory. This implies that they can be efficiently passed by value.

