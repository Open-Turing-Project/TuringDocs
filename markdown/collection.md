
#collection

##Syntax
A _collectionDeclaration_ is one of:

(a)**var** _id_ { , _id_ } : **collection** **of** _typeSpec_
(b)**var** _id_ { , _id_ } : **collection** **of** **forward** _typeId_




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
The statement "**new** _C_,_p_" creates a new element in collection _C_ and sets _p_ to point at _i_. If there is no more memory space for the element, though, _p_ is set to _nil_ (_C_), which is the null pointer for collection _C_. The statement "**free** _C_,_p_" deletes the element of _C_ pointed to by _p_ and sets _p_ to _nil_ (_C_). In each case, _p_ is passed as a **var** parameter and must be a variable of the pointer type of _C_.
The keyword **forward** (form b above) is used to specify that the _typeId_ of the collection elements will be given later in the collection's scope. The later declaration must appear at the same level (in the same list of declarations and statements) as the original declaration. This allows cyclic collections, for example, when a collection contains pointers to another collection, which in turn contains pointers to the first collection. In this case, the _typeId_ is the name of the type that has not yet been declared; _typeId_ cannot be used until its declaration appears. A collection whose element type is **forward** can be used only to declare pointers to it until the type's declaration is given.
Suppose pointer _q_ is equal to pointer _p_ and the element they point to is deleted by "**free** _C_,_p_". We say _q_ is a _dangling pointer_ because it seems to locate an element, but the element no longer exists. A dangling pointer is considered to be an uninitialized value. It cannot be assigned, compared, used as a collection subscript, or passed to **free**.
Collections cannot be assigned, compared, passed as parameters, bound to, or named by a **const** declaration. Collections must not be declared in procedures, functions, records or unions.
The same short forms for classes can be also used for collections. These include omission of the collection name in **new**, **free** and **nil** together with the ^ and -> notations. Pointers to types (see **pointer**) can also be used, which are often more convenient to use than collections.
The syntax of a _collectionDeclaration_ presented above has been simplified by leaving out **unchecked** collections. With this feature, a _collectionDeclaration_ is one of:




When **unchecked** is specified, the checking to verify that pointers actually locate elements is removed. This checking is done using a "time stamp" attached to each element and  pointer, and making sure that these match with each other. When **unchecked** is specified, the execution is dangerous, but faster and smaller, and the pointers become simply machine addresses (as in C).


