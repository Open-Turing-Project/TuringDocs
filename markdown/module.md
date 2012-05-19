
# module

## Syntax
A _moduleDeclaration_ is:   

    module id
       [ implement implementItem ]
       [ implement by implementByItem ]
       [ import [ var ] importItem
              {, [ var ] importItem } ]
       [ export [ howExport ] id {,[howExport ] id }]
       statementsAndDeclarations
    end id

## Description
A module declaration creates a package of variables, constants, types, subprograms, etc. The name of the module (_id_) is given in two places, just after **module** and just after **end**. Items declared inside the module can be accessed outside of the module only if they are exported. Items from outside the module that are to be used in the module need to be imported (unless they are predefined or pervasive).


## Example
This module implements a stack of strings.

Outside of the _stack_ module, the procedures _push_ and _pop_ can be called using the notation _stack.push_ and _stack.pop_. This access is allowed because _push_ and _pop_ are _exported_ from the module. Other items declared in the module (_top_ and _contents_) cannot be accessed from outside because they are not exported.

        module stack            % Implements a LIFO list of strings
            export push, pop
        
            var top : int := 0
            var contents : array 1 .. 100 of string
        
            procedure push ( s : string )
                top := top + 1
                contents ( top ) := s
            end push
        
            procedure pop ( var s : string )
                s := contents ( top )
                top := top - 1
            end pop
        end stack
        
        stack . push ( "Harvey" )
        var name : string
        stack . pop ( name )        % This sets name to Harvey
## Details
In some other programming languages, a module is called a _package_, _cluster_ or _object_.

A module declaration is executed (it is initialized) by executing its declarations and statements. For example, the _stack_ module is initialized by setting the _top_ variable to 0. This initialization executes all the statements and declarations in the module that are not contained in procedures or functions. The initialization is completed before any procedure or function of the module can be called from outside the module. An exported subprogram must not be called until initialization of the module is complete.

A call to an exported procedure or function from outside the module executes the body of that procedure or function (the module is _not_ initialized with each such call). See also **monitor** and **class** declarations.

The **import** list gives the names of items declared outside the module that can be accessed inside the module. Since _stack_ has no **import** list, it is not allowed to access any names declared outside of it. See also **import** lists. Separately-compiled units that are imported are initialized before the importing unit.

The **export** list is used to implement _information hiding_, which isolates implementation details inside the module. The **export** list gives the names of items declared inside the module that can be used outside the module. For example, _push_ and _pop_ are exported from _stack_. Each such use of an exported item must be preceded by the module name and a dot, for example, _stack.push_. (See **unqualified** for advice on how to avoid using the prefix "_stack._"). Names that are not exported, such as _top_ and _contents_, cannot be accessed outside the module.

Procedures, functions, variables, constants and types can be exported; modules, monitors or classes cannot be exported.

A class is essentially a template for creating individual modules (objects). See **class** for details. A **monitor** is essentially a module in which only one process can be active at a time. See **monitor** and **process** for details.

The **opaque** keyword is used (only) in export lists to precede exported type names that have declarations in the module. Outside of the module, the type will be distinct from all others types. This means, for example, that if the opaque type is a record, its fields cannot be accessed outside of the module. Opaque types are used to guarantee that certain items are inspected and manipulated in only one place, namely, inside the module. These types are sometimes called _abstract data types_. See also **export** lists, which also describes **unqualified** and **pervasive** exports.

**Implement** and i**mplement-by** lists are used to separate a module's interface from its body. This allows only a part of a module (its interface) to be visible to its users (its importers), while hiding its implementation. See **implement** and **implement** **by** lists.


## Example
Use an **opaque** type to implement complex arithmetic.

        module complex
            export opaque value, constant, add,
                             other operations 
            type value :
                record
                    realPt, imagPt : real
                end record
        
            function constant (realPt, imagPt: real ) : value
                var answer : value
                answer . realPt := realPt
                answer . imagPt := imagPt
                result answer
            end constant
        
            function add (L, R : value ) : value
                var answer : value
                answer . realPt := L . realPt + R . realPt
                answer . imagPt := L . imagPt + R . imagPt
                result answer
            end add
        
         other operations for complex arithmetic go here 
        end complex
        
        var c,d : complex .value :=complex.constant ( 1, 5 ) 
                % c and d become the complex number (1,5)
        var e : complex .value := complex.add (c, d )
                % e becomes the complex number (2,10)
## Details
Module declarations can be nested inside other modules but cannot be nested inside procedures or functions. A module must not contain a **bind** as one of its (outermost) declarations. A **return** statement cannot be used as one of the (outermost) statements in a module.

The syntax of a _moduleDeclaration_ presented above has been simplified by leaving out **pre**, **invariant** and **post** clauses; the full syntax is:

The true/false expression in the **pre** and **post** clauses must be true when initialization reaches each of them. After that, these have no effect. The true/false expression in the **invariant** must be true any time the module is exited (when finishing initialization or when returning from an external call to an exported subprogram) or called (via an exported subprogram). These clauses (**pre**,**post** and **invariant**) are not inherited by expansions. For example, if module _B_ inherits _A_, the subprograms of _B_ are bound by _B_'s clauses and not by _A_'s.

        module id
            [ implement implementItem ]
            [ implement by implementByItem ]
            [ import [ var ] importItem {, [ var ] importItem } ]
            [ export [ howExport ] id {, [ howExport ] id } ]
            [ pre trueFalseExpn ]
            statementsAndDeclarations
            [ invariant trueFalseExpn ]
            statementsAndDeclarations
            [ post trueFalseExpn ]
        end id
## See also
**[unit](unit.html)**, **[monitor](monitor.html)** and **[class](class.html)**. See also **[export](export.html)** list, **[import](import.html)** list, **[implement](implement.html)** list, i**mplement by** list, **[inherit](inherit.html)** list and **[deferred](deferred.html)** subprogram.

                        
