
#implement

##Syntax
An _implementClause_ is:


**implement** _implementItem_



##Description
An **implement** clause is used to specify that the module, monitor or class containing the clause is to be the implementation of another module, monitor or class. This implementation is a special kind of expansion. The **module**, **monitor** or **class** containing the clause gains access to (inherits) all the declarations inside the target item. See **inherit** clause for rules about expansions, which are also rules for implementations.

The **implement** clause can only be used in a **unit**. See **unit** for the definition of a unit.


##Example
Here is a _stack_ module which defers all of its exported subprograms. This module is an interface but not an implementation. Following _stack_ is the _stackBody_ module that implements the _stack_ module, giving the bodies for _stack_'s subprograms. Any call to _stack's_ _push_ or _pop_ procedures, such as _stack_._push(_"Ed"_)_, will actually call the procedures given in _stackBody_.

Next comes the expansion which gives the bodies for the deferred procedures _push_ and _pop_. The _stackBody_ body also adds declarations for the _top_ and _contents_ variables.

        module stack                % Interface
            implement by stackBody
                                % stackBody has implementation
            export push, pop
            deferred procedure push ( s : string )
            deferred procedure pop ( var s : string )
        end stack        module stackBody        % Implementation
            implement stack     % stack has interface
            var top : int := 0
            var contents : array 1 .. 100 of string
        
            body procedure push % ( s : string )
                top := top + 1
                contents ( top ) := s
            end push
        
            body procedure pop      % ( var s : string )
                s := contents ( top )
                top := top - 1
            end pop
        end stackBody
##Details
Module, monitor or class _D_ can be in _C'_s implement-by clause if, and only if, _C_ is in _D'_s implement clause. In other words, an interface must apply to exactly one implementation and vice versa. A module can implement only a module, a monitor only a monitor, and a class only a class. Classes (but not modules and monitors) can contain inherit clauses. A class cannot contain both an inherit and an implement clause.

An _implementItem_ is one of_:_


(a) _id_
(b) _id_ **in** _fileName_


The second form is used when the implement clause is for a separate **unit** and the imported item is in a file whose name is different from the item's name, as in:

The _fileName_ must be an explicit character string, e.g., "ledg.t". See also **unit**. Parentheses are allowed around the items in **implement** clauses, as in:

There is no restriction on the declarations that an interface may contain. In particular, an interface (any module, monitor or class containing an implement-by clause), can contain subprogram bodies and variable declarations, exactly as is the case in expansions. This is different from languages such as C++ in which there are strict rules limiting what you can put in an interface.

Even though _D_ contains an **implement** clause, _D_ can also contain an implement-by clause, which implies further implementation by further automatic expansion.

Suppose class _D_ is in class _C_'s implement-by clause and that _p_ is a pointer to class _C_:

Even though _C_ is implemented by _D_, _p_ remains a pointer to class _C_. Each creation of an object of class _C_ actually creates an object of type _D_, for example:

Class _D_, which implements _C_, could also have an implement-by clause, which causes its implementation to be automatically created and so on. If another class _E_ inherits _C_, this expansion does not include _D_.

If the **new** statement contains an explicit class name _E_ that is a descendant of _C_ (but not actually C), as in

the object of the explicit class is created. If _E_ has an implement-by clause, the expansion is created.

        implement ledger in "ledg.t"        implement ( ledger in "ledg.t" )        var p : ^ C        new p   % Creates object of class D        new E, p
##See also
**[unit.html](unit)**, **[module.html](module)**, **[monitor.html](monitor)** and **[class.html](class)**. See also **[implement_by.html](implement by)** clause, **[inherit.html](inherit)** clause, **[export.html](export)** list, and **[import.html](import)** list. See also **[deferred.html](deferred)** subprograms.

