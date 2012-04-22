
#procedure

##Syntax
A _procedureDeclaration_ is:

**procedure** _id_ [(_paramDeclaration_ {, _paramDeclaration_ })]
_statementsAndDeclarations_
**end** _id_




##Description
A procedure declaration creates (but does not run) a new procedure. The name of the procedure (_id_) is given in two places, just after **procedure** and just after **end**.



##Example



        procedure greetings
            put "Hello world"
        end greetings
        
        greetings           % This outputs Hello world
        
        procedure sayItAgain ( msg : string, n : int )
            for i : 1 .. n
                put msg
            end for
        end sayItAgain
        
        sayItAgain ("Toot", 2 ) % Toot is output twice
        
        procedure double ( var x : real )
            x := 2 * x
        end double
        
        var y : real := 3.14
        double ( y )        % This doubles the value of y
##Details
The set of parameters declared with the procedure are called _formal_ parameters. In the _double_ procedure, for example, _x_ is a formal parameter. A procedure is called (invoked) by a procedure _call statement_ which consists of the procedure's name followed by the parenthesized list of _actual_ parameters (if any). For example, _double_(_y_) is a call having _y_ as an actual parameter. If there are no parameters (see the _greet_ procedure above), the call does not have parentheses. The keyword **procedure** can be abbreviated to **proc**.
Ordinarily, a procedure _returns_ (finishes and goes back to the place where it was called) by reaching its **end**. However, the **return** statement in a procedure causes it to return immediately. Note that **return** can also be used in the main program to cause it to halt immediately.
Only parameters declared using **var** may be changed in the procedure, for example, _x_ is changed in the _double_ procedure. The upper bounds of arrays and strings that are parameters may be declared to be an asterisk (__*__). This means that the bound is that of the actual parameter. See _paramDeclaration_ for details about parameters.
Procedures and functions cannot be declared inside other procedures and functions.
The syntax of a _procedureDeclaration_ presented above has been simplified by leaving out the optional **import** list, **pre** condition, **init** clause, **post** condition and exception handler. The full syntax is
A procedure must be declared before being called. To allow for mutually recursive procedures, there are **forward** declarations of procedures with later declaration of each procedure **body**. See **forward** and **body** declarations for explanations.


        procedure [ pervasive ] id
            [ ( [ paramDeclaration {,paramDeclaration } ] ) ]
            [ : deviceSpecification ]
            [ pre trueFalseExpn ]
            [ init id := expn {, id := expn } ]
            [ post trueFalseExpn ]
            [ exceptionHandler ]
            statementsAndDeclarations
        end id
##See also
**[import.html](import)** list, **[pre.html](pre)** [condition.html](condition), **[init.html](init)** clause, **[post.html](post)** [condition.html](condition) and _exceptionHandler_ for explanations of these features. See **[pervasive.html](pervasive)** for information on **[pervasive.html](pervasive)** procedures. See **exceptionHandler**. The optional _deviceSpecification_ is used only in procedures declared in monitors and is used to create an _interrupt handling [](procedure)_. See **[monitor.html](monitor)** for details.


