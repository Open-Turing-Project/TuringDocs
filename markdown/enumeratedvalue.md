
#enumeratedValue

##Syntax
An enumeratedValue is:
 *enumeratedTypeId* . *enumeratedId*



##Description
The values of an enumerated type are written as the type name (*enumeratedTypeId*) followed by a dot followed by one of the enumerated values of the type (*enumeratedId*).



##Example
In this example, *color*.*red* is an *enumeratedValue*.


        type color : enum (red, green, blue)
        var c : color := color . red
        var d : color := succ (c)       % d becomes green
##Details
The above description has been simplified by ignoring the possibility that the **enum** type can be exported from a **module**. If this is the case, each use of one of the enumerated values outside of module *M* must be preceded by the module name and a dot, as in *M*.*color*.*red*.



##See also
the **[enum.html](enum)** type and *[explicitconstant.html](explicitConstant)*.


