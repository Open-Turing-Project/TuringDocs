
#nil

##Syntax
**nil** [ (_collectionOrClassId_ ) ]



##Description
The **nil** pointer does not locate any element (object). Pointers locate items in collections, classes and types. The _collectionOrClassId_ is optional.
This **nil** pointer is distinct from pointers to actual elements, and it can be compared to these pointers. It is also distinct from the uninitialized pointer value.



##Example
In this example, the pointer called _first_ is set to the nil pointer of collection _c_, that is, to **nil**(c).


        var c : collection of
            record
                name : string ( 50 )
                next : pointer to c
            end record
        var first : pointer to c := nil ( c )
##Details
See also collection, class and pointer. When nil is written without the _collectionOrClassId_, it can be assigned to a pointer to any collection, class or type.
The type of **nil** without the _collectionOrClassId_ is effectively a pointer to _everyClass_, an imaginary class that has no objects and is the descendant of all classes. This implies that it can be assigned to any other class pointer, because it is a descendant of all classes.
Turing allows you to write **nil** (_id_) after a forward declaration of _id_ (the name of a collection, class or type) before (and after) the resolution of the _id_.


