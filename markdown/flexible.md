
#flexible

##Syntax
**flexible array** _indexType_ { , _indexType_ } **of** _typeSpec_


##Description
The **flexible** keyword allows an array to be resized using **new** at a later point in time. The indices may have compile-time or run-time upper bounds (the lower bound must be compile-time). The upper bounds can be changed by using:

The existing array entries will retain their values, except that any index made smaller will have the corresponding array entries lost. Any index made larger will have the new array entries uninitialized (if applicable).

Additionally, the upper bound (both in the declaration and the **new** statement) can be made one less than the lower bound. This effectively makes an array that contains 0 elements. It can later be increased in size with another **new**.

In the current implementation (1999), with a multi-dimensional array with a non-zero number of total elements, it is a run-time error to change any but the first dimension (unless one of the new upper bounds is one less than the corresponding lower bound, giving 0 elements in the array) as the algorithm to rearrange the element memory locations has not yet been implemented.

Currently, only variables can be declared in this form. There is no flexible array parameter type, although a flexible array can be passed to an array parameter with &#147;__*__&#148; as the upper bound.

        new name , newUpper1 {,newUpper2}
##Example
See **array** for an example of **flexible**.


##See also
**[array.html](array)** and **[new.html](new)**.

