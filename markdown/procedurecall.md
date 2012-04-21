
#procedureCall

##Syntax
A *procedureCall* is:
 *procedureId* [ ( [ *expn* { , *expn* } ] ) ]

##Description
A procedure call is a statement that calls (invokes or activates) a **procedure**. If the procedure has parameters, a parenthesized list of expressions (*expns*) must follow the procedure's name (*procedureId*).

##Example

        procedure greet
            put "Hello"
        end greet
        
        greet       % This is a call to the greet procedure
        
        procedure times ( var i : int, factor : int)
            i := factor * i
        end times
        
        var j : int
        times ( j, 4 )      % Multiply j by 4
##Details
A parameter declared in the header of a procedure is a *formal* parameter. For example, *i *and *factor* above are formal parameters. Each expression in the call is an *actual* parameter. For example, *j *and 4 above are actual parameters.
If a formal parameter is declared using **var**, then the expression passed to that parameter must be a variable reference (so its value can potentially be changed by the procedure). This means, for example, that it would be illegal to pass *j*+3 as the first parameter to *times*. The variable reference and the formal parameter must have equivalent types (see *equivalence* for details).
Each actual parameter passed to a non-**var** formal parameter must be assignable to that parameter (see *assignability *for details). See also *procedureDeclaration*.
In this explanation of *procedureCall*, we have up to this point ignored the possibility of procedures exported from modules, monitors and classes. If the procedure is being called from outside of a module or monitor *M *from which it has been exported, the syntax of the *procedureCall *is:
In other words, the module or monitor name and a dot must precede the procedure's name. If the procedure is being called from outside of a class from which it has been exported, the syntax of the *procedureCall *is one of:
In these, *p* must the a pointer value that locates an object in the class. Form (b) is a short form for form (a).
        M . procedureId [ ( [ expn {, expn } ] ) ]        (a) classId (p) . procedureId [ ( [ expn {, expn } ] ) ]
        (b) p -> procedureId [ ( [ expn {, expn } ] ) ]
##See also
**[class.html](class)**.
