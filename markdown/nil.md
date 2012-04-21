
#nil

##Syntax
**nil** [ (*collectionOrClassId* ) ]

##Description
The **nil** pointer does not locate any element (object). Pointers locate items in collections, classes and types. The *collectionOrClassId* is optional.
This **nil** pointer is distinct from pointers to actual elements, and it can be compared to these pointers. It is also distinct from the uninitialized pointer value.

##Example
In this example, the pointer called *first* is set to the nil pointer of collection *c*, that is, to **nil**(c).
        var c : collection of
            record
                name : string ( 50 )
                next : pointer to c
            end record
        var first : pointer to c := nil ( c )
##Details
See also collection, class and pointer. When nil is written without the *collectionOrClassId*, it can be assigned to a pointer to any collection, class or type.
The type of **nil** without the *collectionOrClassId* is effectively a pointer to *everyClass*, an imaginary class that has no objects and is the descendant of all classes. This implies that it can be assigned to any other class pointer, because it is a descendant of all classes.
Turing allows you to write **nil** (*id*) after a forward declaration of *id* (the name of a collection, class or type) before (and after) the resolution of the *id*.
