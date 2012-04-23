
# new

## Syntax
A _newStatement_ is:   **new** [ _collectionOrClassId_ , ] _pointerVariableReference_

## Description
A **new** statement creates (allocates) a new element and assigns its location to the pointer variable. This element can be an object of a collection or class or a value of a type. If the _collectionOrClassId_ is omitted, the choice of element is determined by the type of the pointer. For example, if the pointer is to class _C_, an object of class _C_ will be allocated.


## Example
Using a collection, declare a list of records and allocate one record.

        var list : collection of
            record
                contents : string ( 10 )
                next : pointer to list  % Short form: next : ^ list
            end record
        var first : pointer to list     % Short form: var first : ^ list
        new list, first         % Short form: new first
## Example
Using a class, create an object of that class. The object is located by the _start_ pointer. 

        class node
            export var next, var name
            name : string (25)
            next : pointer to node  % Short form: next : ^ node
        end node
        var start : pointer to node % Short form: var start : ^ node
        new node, start         % Short form: new start
## Example
Using a record type, declare a list of records and allocate one record. 

        type item:
            record
                contents : string ( 10 )
                next : pointer to item  % Short form: next : ^ item
            end record
        var first : pointer to item     % Short form: var first : ^ item
        new first
## Details
As the examples in this section show, a pointer can locate one of three things: an object of a collection, an object of a class or a value of a type.

In the **new** statement, the _collectionOrClassId_ can be omitted. If the pointer locates a type, it must be omitted. The **free** statement is used to deallocate an element.

An imported class can have one of its objects created (by the **new** statement) only if the class is imported **var**.

If there is no more space to allocate an element, **new** will set the pointer to be the **nil** value, and the program will continue executing.

If the pointer locates class _C_ and _C_ contains an **implement** **by** list, the object created by **new** is the inherited object (through any number of levels of **implement** **by**). The pointer, however, remains a pointer to _C_.

The form **new** _p_  is a short form for **new** _C_, _p_ when _C_ is the class or collection given in _p_'s type.

If _p_ is a pointer to class _C_ and _C_ has a descendant (expansion) class _D_, a **new** statement can be used to allocate an object of type _D_, as in:

If D has an **implement** **by** clause, the expansion is created.

        new D, p    % Allocates an object of class D
## Details
The **new** statement can also be used to resize a **flexible array**. If an array has been declared flexible using the syntax .

The indices may have compile-time or run-time upper bounds (the lower bound must be compile-time). The upper bounds can be changed by using:

The existing array entries will retain their values, except that any index made smaller will have the corresponding array entries lost. Any index made larger will have the new array entries uninitialized (if applicable).

Additionally, the upper bound (both in the declaration and the **new** statement) can be made one less than the lower bound. This effectively makes an array that contains 0 elements. It can later be increased in size with another **new**.

In the current implementation (1999), with a multi-dimensional array with a non-zero number of total elements, it is a run-time error to change any but the first dimension (unless one of the new upper bounds is one less than the corresponding lower bound, giving 0 elements in the array) as the algorithm to rearrange the element memory locations has not yet been implemented.

Currently, only variables can be declared in this form. There is no flexible array parameter type, although a flexible array can be passed to an array parameter with "***"** as the upper bound.

        var name : flexible array indexType { , indexType } of typeSpec        new name , newUpper1 {,newUpper2}
## Example
See **array** for an example of **flexible arrays**.


## See also
**[class](class.html)** and **[collection](collection.html)** declarations, **[pointer](pointer.html)** type, **[free](free.html)** [statement](statement.html), **[nil](nil.html)** value and **[implement by](implement_by.html)** list.

For [flexible](flexible.html) arrays, see also **[array](array.html)** and **[flexible](flexible.html)**.

