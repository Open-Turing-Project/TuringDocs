
# cheat

## Syntax
A _typeCheat_ is one of:   (a) **cheat** (_targetType_, _expn_ **[** : _sizeSpec_ **]** )   (b) **#** _expn_   (c) _id_ : **cheat** _typeSpec_

## Description
A type cheat interprets the representation (bits) of one type as another type. Type cheats are dirty (machine-dependent) and sometimes dangerous (arbitrary corruption) and should be used only by programmers who know the underlying computer representation of values. 

Form (b) is a short form type cheat in which the target type is a natural number.

Form (c) is used as a parameter in a subprogram declaration. It causes whatever is passed in to the parameter to be interpreted as _typeSpec_. 


## Example
The character 'B' is assigned to variable _i_, whose type is considered to be **char** (although it is really **int1**).

This assignment is equivalent (on byte oriented computers) to either of the following:

        var i : int1        % One byte integer
        cheat (char, i) := 'B'        i := cheat (int1, 'B')
        i := ord ('B')
## Details
The form of _targetType_ must be one of:


(a)   [ _id_ . ] _typeId_  
(b)   **int**, **int1**, **int2** or **int4**  
(c)   **nat**, **nat1**, **nat2** or **nat4**  
(d)   **boolean**  
(e)   **char** [ (_numberOfCharacters_ ) ]  
(f)   **string** [ (_maximumLength_ ) ]  
(g)   **addressint**  


In form (a) the beginning identifier _id_ must be the name of a module, monitor or class that exports the _typeId_. Each of _numberOfCharacters_ and _maximumLength_ must be compile time integer expressions.

If the _expn_ in a type cheat is a variable reference and the _sizeSpec_ is omitted, the type cheat is considered to be a variable whose type is _targetType_. This allows, for example, the type cheat to be assigned to, as in:


**cheat** (**char**, _i_) := 'B'  


If the _expn_ is a value that is not a variable reference, or if _sizeSpec_ is present, the type cheat is an expression value whose type is _targetType_.

The _sizeSpec_ is a compile time integer expression giving the size of the _expn'_s value. It can be specified only for integer or natural number values (where it must be 1, 2 or 4) or real values (where it must be 4 or 8).

A type cheat is carried out in two steps. The first step converts the value if necessary to the size given by _sizeSpec_. The second step, which involves no generated code, interprets the value as the target type.

The prefix operator # is a short form for a class of type cheats. It interprets its argument as a natural number. In general, # _expn_ is the same as **cheat** (**nat**_n_, _expn_) where _n_ is determined as follows. If the _expn_ is a variable or expression of size 1, 2 or 4, _n_ is the size of the item, otherwise _n_ is 4.


## Example
Set the second character of _d_ so it has the numeric representation 24. In general, if _c_ is a character, then #_c_ = **ord**_(c)_. Note that #_c_ can have a number value assigned to it, but _ord(c)_ cannot.

        var d : char (3)
        #d (2) := 24        % Same as d(2) := chr(24)
## Example
The notation 16#FFFF means FFFF in base 16, which is 32767 in base 10 and is 16 1's in a row in base 2. This same pattern is the two's complement representation of the value -1 in a 2-byte integer.

        var i : int2
        #i := 16#FFFF       % Equivalent to i := -1
## Example
The following example prints out a string located at addressint _myAddr_.

        procedure PrintString (str : cheat string)
            put str
        end PrintString 
        
        var myAddr : addressint
        ...             % Assigned a value to myAddr
        PrintString (myAddr)    % myAddr will be treated as a string
## Details
An implementation may prohibit certain type cheats. Memory alignment requirements may render some type cheats unfeasible. It is dangerous to consider a value to have a _targetType_ larger than the value's type. An implementation may prohibit certain type cheats on **register** scalar items.


## See also
_[explicitIntegerConstant](explicitintegerconstant.html)_ (for description of constants such as 16#FFFF) and the following functions that convert one type to another in a machine-independent manner: **[ord](ord.html)**, **[chr](chr.html)**, **[intstr](intstr.html)**, **[strint](strint.html)**, **[natstr](natstr.html)**, and **[strnat](strnat.html)**.

