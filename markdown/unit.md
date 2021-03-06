
# unit

## Syntax
A _compilationUnit_ is one of:   (a) [ _importList_ ] _mainProgram_   (b) **unit** _moduleDeclaration_   (c) **unit** _monitorDeclaration_   (d) **unit** _classDeclaration_

## Description
A program can be divided up into units, each in a separate file. All  of these files except the main program begin with the keyword **unit**. The unit contains the main program, a module, a monitor or a class.


## Example
Here is stack module that is separated out into a file whose name is _stack_.

The main program, which is in another file, gains access to the stack by importing it. Here is the main program:

        unit        % The keyword unit begins each separate file
        module stack
            export push, pop
        
            var top : int := 0
            var contents : array 1 .. 100 of int
        
            procedure push ( i : int )
                top += 1
                contents ( top ) := i
            end push
        
            procedure pop ( i : int )
                i := contents ( top )
                top -= 1
            end pop
        end stack        import var stack    % Use the stack
        var n : int
        
        stack . push ( n )
        
        stack . pop ( n )
## Details
In this example, the  keyword **var** in the import list  is required because the main program causes a change in the stack, by calling _push_ and _pop_. The import lists of units that are modules, monitors and classes are used to gain access to further units.

If the stack were in a file with a different name, say _stk.t_, the import list would be rewritten to use an **in** clause, as follows:

A mainProgram is simply a program. See **program**.

        import var stack in "stk.t"
## See also
**[module](module.html)**, **[monitor](monitor.html)** and **[class](class.html)**. See also **[export](export.html)** list, **[import](import.html)** list, **[inherit](inherit.html)** list, **[implement](implement.html)** list and **[implement by](implement_by.html)** list.

