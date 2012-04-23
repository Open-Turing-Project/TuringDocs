
# functionCall

## Syntax
A _functionCall_ is:   _functionId_ [ ( [ _expn_ { , _expn_ } ] ) ]

## Description
A function call is an expression that calls (invokes or activates) a **function**. If the function has parameters, a parenthesized list of expressions (_expns_) must follow the function's name (_functionId_).


## Example
This function takes a string containing a blank and returns the first word in the string (all the characters up to the first blank).

        function firstWord ( str : string ): string
            for i : 1 .. length ( str )
                if str ( i ) = " " then
                    result str ( 1 .. i - 1)
                end if
            end for
        end firstWord
        
        put "The first word is: ", firstWord ("Henry Hudson")   
                        % The output is Henry.
## Details
The parameter declared in the header of a function, is a _formal_ parameter, for example, _str_ above is a formal parameter. Each expression in the call is an _actual_ parameter, for example, _sample_ above is an actual parameter.

Each actual parameter passed to its non-**var** formal parameter must be assignable to that parameter (see _assignability_ for details). See also _functionDeclaration_ and _procedureDeclaration_.

In this explanation of _functionCall_, we have up to this point ignored the possibility of functions exported from modules. If the function is being called from outside of a module from which it has been exported, the syntax of the _functionCall_ is:

In other words, the module or monitor name and a dot must precede the function's name. If the function is being called from outside of a class from which it has been exported, the syntax of the _functionCall_ is one of:

In these _p_ must be a pointer value that locates an object in the class. Form (b) is a short form for form (a).

        moduleId . functionId [ ( expn {, expn } ) ]        (a) classId ( p ) . functionId [ ( [ expn {, expn } ] ) ]
        (b) p -> functionId [ ( [ expn {, expn } ] ) ]
## See also
**[class](class.html)**.

