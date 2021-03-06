
# deferred

## Syntax
A deferredDeclaration is:   **deferred** subprogramHeader

## Description
A procedure or function is declared to be **deferred** when you want to be able to override the subprogram in an expansion. The procedure or function must be in a module, monitor or class.


## Example
The _display_ procedure is deferred in this class of stacks to allow various ways of graphically displaying the stack on the screen:

An expansion to the _stack_ class can give a body for _display_, as in:

The following creates a stack that can be displayed and displays it:

        class stack
            export push, pop
             local declarations 
             declarations of the push and pop procedures 
            deferred procedure display (howbig : int)
        end stack        class stackWithSimpleDisplay
            body procedure display      % (howbig : int)
                    graphically display the stack on the screen 
            end display
        end stackWithSimpleDisplay        var p : ^stackWithSimpleDisplay
        new p
        
        p -> display (25)       % Display the stack on the screen
## Details
A deferred procedure is _resolved_ by giving its body. This can be done in the scope (**module**, **monitor** or **class**) containing the **deferred** declaration (following the **deferred** declaration) or in any expansion of that scope. Only one resolution per scope is allowed. Unresolved subprograms can be called, but they immediately abort.

All exported subprograms are implicitly deferred and can be overridden in expansions. 

During initialization of a **module**, **monitor** or **object** of a **class**, deferred subprograms (including exported subprograms) cannot be called. This restriction prevents accessing an object before it is fully initialized.

A **deferred** declaration must not appear in the main program.


## See also
**[module](module.html)**, **[monitor](monitor.html)** and **[class](class.html)**. See also **[export](export.html)** list, **[import](import.html)** list, **[inherit](inherit.html)** list, **[implement](implement.html)** list and **[implement by](implement_by.html)** list.

