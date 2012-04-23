
# enum

## Syntax
An _enumeratedType_ is:   **enum** (_id_ { , _id_ } )

## Description
The values of an enumerated type are distinct and increasing. They can be thought of as the values 0, 1, 2 and so on, but arithmetic is not allowed with these values.


## Example


        type color : enum (red, green, blue)
        var c : color := color . red
        var d : color := succ (c)       % d becomes green
## Details
Each value of an enumerated type is the name of the type followed by a dot followed by the element's name, for example, _color_._red_. Enumerated values can be compared for equality and for ordering. The **succ** and **pred** functions can be used to find the value following or preceding a given enumerated value. The **ord** function can be used to find the enumeration position of a value, for example, **ord** (_color_._red_) is 0.

Enumerated types cannot be combined with integers or with other enumerated types.


## Details
It is illegal to declare an "anonymous" enum. The only legal declaration for an enum is in a type declaration. For example, the following is now illegal:

Given that there is no (easy) way of generating an enum value without it being a named type, this should not impact any but the most bizarre code.

        var a : array enum (red, green, blue) of int
## Details
The "put" and "get" statement semantics have been expanded to allow put's and get's of enum values. The values printed and input are the element names themselves, case sensitive. For example, for

        type colors : enum (red, green, blue)
        var c : colors := colors . red
        put c       % outputs "red" (without the quotes)
