
# procedureCall

## Syntax
A _procedureCall_ is:   _procedureId_ [ ( [ _expn_ { , _expn_ } ] ) ]

## Description
A procedure call is a statement that calls (invokes or activates) a **procedure**. If the procedure has parameters, a parenthesized list of expressions (_expns_) must follow the procedure's name (_procedureId_).


## Example


        procedure greet
            put "Hello"
        end greet
        
        greet       % This is a call to the greet procedure
        
        procedure times ( var i : int, factor : int)
            i := factor * i
        end times
        
        var j : int
        times ( j, 4 )      % Multiply j by 4
## Details
A parameter declared in the header of a procedure is a _formal_ parameter. For example, _i_ and _factor_ above are formal parameters. Each expression in the call is an _actual_ parameter. For example, _j_ and 4 above are actual parameters.

If a formal parameter is declared using **var**, then the expression passed to that parameter must be a variable reference (so its value can potentially be changed by the procedure). This means, for example, that it would be illegal to pass _j_+3 as the first parameter to _times_. The variable reference and the formal parameter must have equivalent types (see _equivalence_ for details).

Each actual parameter passed to a non-**var** formal parameter must be assignable to that parameter (see _assignability_ for details). See also _procedureDeclaration_.

In this explanation of _procedureCall_, we have up to this point ignored the possibility of procedures exported from modules, monitors and classes. If the procedure is being called from outside of a module or monitor _M_ from which it has been exported, the syntax of the _procedureCall_ is:

In other words, the module or monitor name and a dot must precede the procedure's name. If the procedure is being called from outside of a class from which it has been exported, the syntax of the _procedureCall_ is one of:

In these, _p_ must the a pointer value that locates an object in the class. Form -  is a short form for form - .

        M . procedureId [ ( [ expn {, expn } ] ) ]        (a) classId (p) . procedureId [ ( [ expn {, expn } ] ) ]
        (b) p -> procedureId [ ( [ expn {, expn } ] ) ]
## See also
**[class](class.html)**.

