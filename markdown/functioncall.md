
#functionCall

##Syntax
A *functionCall* is:
 *functionId* [ ( [ *expn *{ , *expn* } ] ) ]



##Description
A function call is an expression that calls (invokes or activates) a **function**. If the function has parameters, a parenthesized list of expressions (*expns*) must follow the function's name (*functionId*).



##Example
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
##Details
The parameter declared in the header of a function, is a *formal* parameter, for example, *str *above is a formal parameter. Each expression in the call is an *actual* parameter, for example, *sample* above is an actual parameter.
Each actual parameter passed to its non-**var** formal parameter must be assignable to that parameter (see *assignability *for details). See also *functionDeclaration* and *procedureDeclaration*.
In this explanation of *functionCall*, we have up to this point ignored the possibility of functions exported from modules. If the function is being called from outside of a module from which it has been exported, the syntax of the *functionCall *is:
In other words, the module or monitor name and a dot must precede the function's name. If the function is being called from outside of a class from which it has been exported, the syntax of the *functionCall *is one of:
In these *p* must be a pointer value that locates an object in the class. Form (b) is a short form for form (a).


        moduleId . functionId [ ( expn {, expn } ) ]        (a) classId ( p ) . functionId [ ( [ expn {, expn } ] ) ]
        (b) p -> functionId [ ( [ expn {, expn } ] ) ]
##See also
**[class.html](class)**.


