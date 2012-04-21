
#type

##Syntax
A *typeDeclaration* is one of:
 (a)**type** *id* : *typeSpec* (b)**type** *id* : **forward**

##Description
A type declaration gives a name to a type. This name can be used in place of the type.

##Example

        type nameType : string ( 30 )
        type range : 0 .. 150
        type entry :
            record
                name : nameType
                age : int
            end record
##Details
The keyword **pervasive** can be inserted just after **type**. When this is done, the type is visible inside all subconstructs of the type scope. Without **pervasive**, the type is not visible inside modules, monitors and classes unless explicitly imported. Pervasive types need not be imported. You can abbreviate **pervasive** as an asterisk (*****).
A **forward** type allows pointers to be declared to the **type** before the type is *resolved*. To resolve a **type**, you must follow a **forward** with a declaration of the same name and in the same scope. This type declaration must include a *typeSpec*.
