
#cheat

##Syntax
A *typeCheat* is one of:
 (a)**cheat** (*targetType*, *expn* **[** : *sizeSpec* **]** ) (b)**#** *expn* (c)*id* : **cheat** *typeSpec*



##Description
A type cheat interprets the representation (bits) of one type as another type. Type cheats are dirty (machine-dependent) and sometimes dangerous (arbitrary corruption) and should be used only by programmers who know the underlying computer representation of values. 
Form (b) is a short form type cheat in which the target type is a natural number.
Form (c) is used as a parameter in a subprogram declaration. It causes whatever is passed in to the parameter to be interpreted as *typeSpec*. 



##Example
The character 'B' is assigned to variable *i*, whose type is considered to be **char** (although it is really **int1**).
This assignment is equivalent (on byte oriented computers) to either of the following:


        var i : int1        % One byte integer
        cheat (char, i) := 'B'        i := cheat (int1, 'B')
        i := ord ('B')
##Details
The form of *targetType* must be one of:
 (a) [ *id* . ] *typeId* (b) **int**, **int1**, **int2** or **int4** (c) **nat**, **nat1**, **nat2** or **nat4** (d) **boolean** (e) **char** [ (*numberOfCharacters* ) ] (f) **string** [ (*maximumLength* ) ] (g) **addressint**
In form (a) the beginning identifier *id* must be the name of a module, monitor or class that exports the *typeId*. Each of *numberOfCharacters* and *maximumLength* must be compile time integer expressions.
If the *expn* in a type cheat is a variable reference and the *sizeSpec* is omitted, the type cheat is considered to be a variable whose type is *targetType*. This allows, for example, the type cheat to be assigned to, as in:
 **cheat** (**char**, *i*) := 'B'
If the *expn* is a value that is not a variable reference, or if *sizeSpec* is present, the type cheat is an expression value whose type is *targetType*.
The *sizeSpec* is a compile time integer expression giving the size of the *expn'*s value. It can be specified only for integer or natural number values (where it must be 1, 2 or 4) or real values (where it must be 4 or 8).
A type cheat is carried out in two steps. The first step converts the value if necessary to the size given by *sizeSpec*. The second step, which involves no generated code, interprets the value as the target type.
The prefix operator # is a short form for a class of type cheats. It interprets its argument as a natural number. In general, # *expn* is the same as **cheat** (**nat***n*, *expn*) where *n* is determined as follows. If the *expn* is a variable or expression of size 1, 2 or 4, *n* is the size of the item, otherwise *n *is 4.



##Example
Set the second character of *d* so it has the numeric representation 24. In general, if *c* is a character, then #*c* = **ord***(c)*. Note that #*c* can have a number value assigned to it, but *ord(c)* cannot.


        var d : char (3)
        #d (2) := 24        % Same as d(2) := chr(24)
##Example
The notation 16#FFFF means FFFF in base 16, which is 32767 in base 10 and is 16 1's in a row in base 2. This same pattern is the two's complement representation of the value -1 in a 2-byte integer.


        var i : int2
        #i := 16#FFFF       % Equivalent to i := -1
##Example
The following example prints out a string located at addressint *myAddr*.


        procedure PrintString (str : cheat string)
            put str
        end PrintString 
        
        var myAddr : addressint
        ...             % Assigned a value to myAddr
        PrintString (myAddr)    % myAddr will be treated as a string
##Details
An implementation may prohibit certain type cheats. Memory alignment requirements may render some type cheats unfeasible. It is dangerous to consider a value to have a *targetType* larger than the value's type. An implementation may prohibit certain type cheats on **register** scalar items.



##See also
*[explicitintegerconstant.html](explicitIntegerConstant)* (for description of constants such as 16#FFFF) and the following functions that convert one type to another in a machine-independent manner: **[ord.html](ord)**, **[chr.html](chr)**, **[intstr.html](intstr)**, **[strint.html](strint)**, **[natstr.html](natstr)**, and **[strnat.html](strnat)**.


