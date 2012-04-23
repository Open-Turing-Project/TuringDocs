
# named

## Syntax
A _namedType_ is one of:   (a) _typeId_   (b) _moduleId_ . _typeId_

## Description
A type can be given a name (_typeId_) and later this name can be used instead of writing out the type.


## Example
In this example, _phoneRecord_ is a named type.

        type phoneRecord :
            record
                name : string ( 20 )
                phoneNumber : int
                address : string ( 50 )
            end record
        
        var oneEntry : phoneRecord
        var phoneBook : array 1 .. 100 of phoneRecord
## Details
Form (a) is the most common kind of named type. Form (b) is used when the type name has been exported from a module.

Arrays whose bounds are not known at compile time cannot be named.

