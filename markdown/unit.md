
#unit

##Syntax
A *compilationUnit* is one of:
 (a)[ *importList* ] *mainProgram* (b)**unit** *moduleDeclaration* (c)**unit** *monitorDeclaration* (d)**unit** *classDeclaration*



##Description
A program can be divided up into units, each in a separate file. All  of these files except the main program begin with the keyword **unit**. The unit contains the main program, a module, a monitor or a class.



##Example
Here is stack module that is separated out into a file whose name is *stack*.
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
##Details
In this example, the  keyword **var** in the import list  is required because the main program causes a change in the stack, by calling *push* and *pop*. The import lists of units that are modules, monitors and classes are used to gain access to further units.
If the stack were in a file with a different name, say *stk.t*, the import list would be rewritten to use an **in** clause, as follows:
A mainProgram is simply a program. See **program**.


        import var stack in "stk.t"
##See also
**[module.html](module)**, **[monitor.html](monitor)** and **[class.html](class)**. See also **[export.html](export)** list, **[import.html](import)** list, **[inherit.html](inherit)** list, **[implement.html](implement)** list and **[implement_by.html](implement by)** list.


