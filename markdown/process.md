
#process

##Syntax
A _processDeclaration_ is:

**process** _id_ [ ( [ _paramDeclaration_ {,_paramDeclaration_ } ] )]
_statementsAndDeclarations_
**end** _id_




##Description
A process declaration is much like a procedure declaration, but is activated by a **fork** statement rather than by a call. The **fork** statement starts concurrent (parallel) execution of the process while the statements following the **fork** continue to execute.



##Example
This program initiates (forks) two concurrent processes, one of which repeatedly outputs _Hi_ and the other _Ho_. The resulting output is an unpredictable sequence of _Hi_'s and _Ho_'s as _greetings_ executes twice concurrently, one instance with _word_ set to _Hi_ and the other with _word_ set to _Ho_.


        process greetings ( word : string )
            loop
                put word
            end loop
        end greetings
        
        fork greetings ( "Hi" )
        fork greetings ( "Ho" )
##Details
The **process** declaration creates a template for a process (a concurrent activity), which is activated by a **fork** statement.
A process declaration can appear wherever a module declaration is allowed except that a process declaration is not allowed in a class. The declarations and statements in a process declaration are the same as those in a procedure.
See _paramDeclaration_ for details about parameters. There is an anomaly in parameters to processes, that can lead to errors. In particular, non-**var** parameters that are non-scalars (such as strings and arrays) are passed by reference. The result is that the target of the reference may change value while the process is executing, which in turn means that the seemingly constant parameter is not really constant. For example, if the string variable _s_ were passed to the _greetings_ process and subsequently changed, the value of _greetings_' formal parameter would change.
The syntax of a _processDeclaration_ presented above has been simplified by leaving out the optional stack size (_compileTimeExpn_), **import** list, **pre** condition, **init** clause, **post** condition and exception handler. 
The full syntax is:
See **pervasive** for information on **pervasive** processes. The optional _compileTimeExpn_ following the parameter list (if any) is used to specify the number of bytes for the process' stack.


        process [ pervasive ] id
                [ ( [ paramDeclaration {,paramDeclaration } ] )]
                [ : compileTimeExpn ]
            [ pre trueFalseExpn ]
            [ init id := expn {, id := expn } ]
            [ post trueFalseExpn ]
            [ exceptionHandler ]
            statementsAndDeclarations
        end id
##See also
**[import.html](import)** list, **[pre.html](pre)** [condition.html](condition), **[init.html](init)** clause, **[post.html](post)** [condition.html](condition) and _exceptionHandler_ for explanations of these additional features.


