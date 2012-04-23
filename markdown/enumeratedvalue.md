
# enumeratedValue

## Syntax
An enumeratedValue is:   _enumeratedTypeId_ . _enumeratedId_

## Description
The values of an enumerated type are written as the type name (_enumeratedTypeId_) followed by a dot followed by one of the enumerated values of the type (_enumeratedId_).


## Example
In this example, _color_._red_ is an _enumeratedValue_.

        type color : enum (red, green, blue)
        var c : color := color . red
        var d : color := succ (c)       % d becomes green
## Details
The above description has been simplified by ignoring the possibility that the **enum** type can be exported from a **module**. If this is the case, each use of one of the enumerated values outside of module _M_ must be preceded by the module name and a dot, as in _M_._color_._red_.


## See also
the **[enum](enum.html)** type and _[explicitConstant](explicitconstant.html)_.

