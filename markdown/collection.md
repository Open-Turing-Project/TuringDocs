
#collection

##Syntax
A *collectionDeclaration* is one of:
 (a)**var** *id *{ , *id *} : **collection** **of** *typeSpec* (b)**var** *id *{ , *id *} : **collection** **of** **forward** *typeId*



##Description
A collection declaration creates a new collection (or collections). A collection can be thought of as an array whose elements are dynamically created (by **new**) and deleted (by **free**). Elements of a collection are referred to by the collection's name subscripted by a pointer. See also **new**, **free** and **pointer**.



##Example
Create a collection that will represent a binary tree.


        var tree : collection of
            record
                name : string (10)
                left, right : pointer to tree
            end record
        
        var root : pointer to tree
        new tree, root
        tree (root) . name := "Adam"
##Details
The statement "**new** *C*,*p*" creates a new element in collection *C* and sets *p* to point at *i*. If there is no more memory space for the element, though, *p* is set to *nil* (*C*), which is the null pointer for collection *C*. The statement "**free** *C*,*p*" deletes the element of *C* pointed to by *p* and sets *p* to *nil* (*C*). In each case, *p* is passed as a **var** parameter and must be a variable of the pointer type of *C*.
The keyword **forward** (form b above) is used to specify that the *typeId* of the collection elements will be given later in the collection's scope. The later declaration must appear at the same level (in the same list of declarations and statements) as the original declaration. This allows cyclic collections, for example, when a collection contains pointers to another collection, which in turn contains pointers to the first collection. In this case, the *typeId* is the name of the type that has not yet been declared; *typeId* cannot be used until its declaration appears. A collection whose element type is **forward** can be used only to declare pointers to it until the type's declaration is given.
Suppose pointer *q* is equal to pointer *p* and the element they point to is deleted by "**free** *C*,*p*". We say *q* is a *dangling pointer* because it seems to locate an element, but the element no longer exists. A dangling pointer is considered to be an uninitialized value. It cannot be assigned, compared, used as a collection subscript, or passed to **free**.
Collections cannot be assigned, compared, passed as parameters, bound to, or named by a **const** declaration. Collections must not be declared in procedures, functions, records or unions.
The same short forms for classes can be also used for collections. These include omission of the collection name in **new**, **free** and **nil** together with the ^ and -> notations. Pointers to types (see **pointer**) can also be used, which are often more convenient to use than collections.
The syntax of a *collectionDeclaration* presented above has been simplified by leaving out **unchecked** collections. With this feature, a *collectionDeclaration* is one of:
 (a) **var** *id *{ , *id *} : [ **unchecked** ] **collection** **of** *typeSpec* (b)* ***var** *id *{ , *id *} : [ **unchecked** ] **collection** **of** **forward** *typeId*
When **unchecked** is specified, the checking to verify that pointers actually locate elements is removed. This checking is done using a "time stamp" attached to each element and  pointer, and making sure that these match with each other. When **unchecked** is specified, the execution is dangerous, but faster and smaller, and the pointers become simply machine addresses (as in C).


