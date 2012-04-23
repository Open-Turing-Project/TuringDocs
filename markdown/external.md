
#external

##Syntax
An _externalDeclaration_ is one of:


(a) **external** [ _overrideName_ ] _subprogramHeader_
(b) **external** [ _addressSpec_ ] **var** _id_ [ : _typeSpec_ ] [ :=_expn_ ]



##Description
An external declaration is used to access variables or subprograms that are written in other languages or which require special linkage. This feature is implementation-dependent and dangerous and may cause arbitrary data or program corruption. From an interpretive environment such as Turing, this provides linkage to items that are part of the Turing system. For compiled versions of Turing, the linkage would be by means of a standard, operating system-specific linkage editor.


##Details
In form (a) the optional _overrideName_ must be an explicit string constant, such as "_printf_". If it is omitted, the external name is the name in the _subprogramHeader_. See _subprogramHeader_.

The current implementation does not support form (b). This form is documented here in case a future version supports it. The _addressSpec_ is a compile time expression (its value must fit in the range of the **addressint** type) or is a compile time string value. If the _addressSpec_ is omitted, the identifier is the name of an external variable. This name represents an implementation-dependent method of locating a variable. At least one of _typeSpec_ or _expn_ must be present.

Declaring variables at absolute addresses is useful for device management in computer architectures with memory mapped device registers. External variables declared to be **int** or **nat** will by default be checked for initialization. To avoid this check, declare them to be **int4** or **nat4**.


##Example
Place variable _ttyData_ at hexadecimal location 9001 and assign it the character A.

        external 16#9001 var ttyData : char
        ttyData := 'A'  % Character A is assigned to hex location 9001
##Example
Access an external integer variable named ERRFLAG.

        external var ERRFLAG : int
        if ERRFLAG = 0 then 
##Example
Access an integer variable which is called _y_ in this program but is called _x_ externally.

        external "x" var y : int
##Example
Declare _drawcircle_ to be a procedure that is externally known as _circle_.

        external "circle" procedure drawcircle (x, y, r, Color : int)
