
#free

##Syntax
A _freeStatement_ is:


**free** [ _collectionOrClassId_, ] _pointerVariableReference_



##Description
A **free** statement destroys (deallocates) an element that has been allocated by a **new** statement.


##Example
Using a collection, declare a list of records and allocate one of these records. Then deallocate the record.

        var list : collection of
            record
                contents : string ( 10 )
                next : pointer to list
                            % Short form: next : ^ list
            end record
        var first : pointer to list % Short form: var next : ^ list
        new list, first
                % Allocate an element of list; place its location in first
                % Short form: new first
        
        free list, first    % Deallocate the element of list located by first
                    % Short form: free first
##Details
The **free** statement sets the pointer variable to the **nil** value. See the **new** statement for examples of allocating elements of classes and values of types. It the pointer locates a type, the _collectionOrClassId_ in the **free** statement must be omitted.

An imported class can have one of its objects destroyed (by the **free** statement) only if the class is imported **var**.

The _collectionOrClassId_ is optional in the **free** statement.


##See also
**[class.html](class)** and **[collection.html](collection)** declarations, the **[pointer.html](pointer)** type, the **[new.html](new)** [statement.html](statement) and the **[nil.html](nil)** value.

