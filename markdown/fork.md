
#fork

##Syntax
A _forkStatement_ is:

**fork**_ processId_ [ ( [ _expn_ { , _expn_ } ] ) ]
[ : _reference_ [ , _expn_ [ , _reference_ ] ] ]




##Description
A **fork** activates (starts the concurrent execution of) a process declaration. If the process has parameters, a parenthesized list of expressions (_expns_) must follow the process'  name (_processId_).



##Example
This program initiates (forks) two concurrent processes, one of which repeatedly outputs Hi and the other Ho. The resulting output is an unpredictable sequence of Hi's and Ho's, as _greetings_ executes twice concurrently, one instance with its _word_ set to Hi and the other with its _word_ set to Ho.


        process greetings ( word : string )
            loop
                put word
            end loop
        end greetings
        
        fork greetings ( "Hi" )
        fork greetings ( "Ho" )
##Details
See **procedure** declaration for details about parameters. The first optional _reference_ in the **fork** statement must be a **boolean** variable reference. The **fork** sets this to **true** if the process is actually activated. If this fails to occur (probably because stack space could not be allocated), this _reference_ is set to **false**. If the **fork** fails but this reference is omitted, an exception occurs. See exception handlers.
The optional _expn_ specifies the number of bytes for the process' stack; this overrides the optionally given stack size in the **process** declaration. The second optional _reference_ must be a variable reference with the type **addressint**. See **addressint**. This variable is set to identify the process activation. This reference has the implementation-dependent meaning of locating the process' internal descriptor.
In this explanation of the **fork** statement, we have up to this point ignored the possibility of processes exported from modules. If the process is being forked from outside of a module from which it has been exported, the syntax of the **fork**_ _statement_ _is:
In other words, the module's name and a dot must precede the process' name.


        fork moduleId . procedureId [ ( expn {, expn } ) ] 
