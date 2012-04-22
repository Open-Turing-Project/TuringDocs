
#scalar

##Syntax
A _scalarType_ is one of:

(a)_standardType_ _% int_,_ real_,_ boolean or string_
(b)_enumeratedType_
(c)_subrangeType_
(d)_pointerType_
(e)**char**
(f)**int**_n_
(g)**nat**_n_
(h)**real**_n_
(i)_namedType_  _% Must name one of the above types_




##Description
Scalar types are sometimes called _simple_ or _primitive_ types. The non-scalar types are strings, sets, arrays, records, unions and in OOT **char**(_n_). They are defined using scalar types. Scalar types are passed by value to parameters, while non-scalars are passed by reference (by passing an implicit pointer to the non-scalar value).



##Description
In current Turing implementations scalar types are directly represented in 1, 2, 4 or 8 bytes in a computer's memory. This implies that they can be efficiently passed by value.


