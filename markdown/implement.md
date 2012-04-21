
#implement

##Syntax
An *implementClause* is:
 **implement** *implementItem*

##Description
An **implement** clause is used to specify that the module, monitor or class containing the clause is to be the implementation of another module, monitor or class. This implementation is a special kind of expansion. The **module**, **monitor** or **class** containing the clause gains access to (inherits) all the declarations inside the target item. See **inherit** clause for rules about expansions, which are also rules for implementations.
The **implement** clause can only be used in a **unit**. See **unit** for the definition of a unit.

##Example
Here is a *stack* module which defers all of its exported subprograms. This module is an interface but not an implementation. Following *stack* is the *stackBody *module that implements the *stack* module, giving the bodies for *stack*'s subprograms. Any call to *stack's* *push* or *pop* procedures, such as *stack*.*push(*"Ed"*)*, will actually call the procedures given in *stackBody*.
Next comes the expansion which gives the bodies for the deferred procedures *push* and *pop*. The *stackBody *body also adds declarations for the *top* and *contents* variables.
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
Module, monitor or class *D* can be in *C'*s implement-by clause if, and only if, *C* is in *D'*s implement clause. In other words, an interface must apply to exactly one implementation and vice versa. A module can implement only a module, a monitor only a monitor, and a class only a class. Classes (but not modules and monitors) can contain inherit clauses. A class cannot contain both an inherit and an implement clause.
An *implementItem* is one of*:*
 (a) *id* (b) *id* **in** *fileName*
The second form is used when the implement clause is for a separate **unit** and the imported item is in a file whose name is different from the item's name, as in:
The *fileName* must be an explicit character string, e.g., "ledg.t". See also **unit**. Parentheses are allowed around the items in **implement** clauses, as in:
There is no restriction on the declarations that an interface may contain. In particular, an interface (any module, monitor or class containing an implement-by clause), can contain subprogram bodies and variable declarations, exactly as is the case in expansions. This is different from languages such as C++ in which there are strict rules limiting what you can put in an interface.
Even though *D* contains an **implement** clause, *D* can also contain an implement-by clause, which implies further implementation by further automatic expansion.
Suppose class *D* is in class *C*'s implement-by clause and that *p* is a pointer to class *C*:
Even though *C* is implemented by *D*, *p* remains a pointer to class *C*. Each creation of an object of class *C* actually creates an object of type *D*, for example:
Class *D*, which implements *C*,* *could also have an implement-by clause, which causes its implementation to be automatically created and so on. If another class *E* inherits *C*,* *this expansion does not include *D*.
If the **new** statement contains an explicit class name *E *that is a descendant of *C* (but not actually C), as in
the object of the explicit class is created. If *E* has an implement-by clause, the expansion is created.
        implement ledger in "ledg.t"        implement ( ledger in "ledg.t" )        var p : ^ C        new p   % Creates object of class D        new E, p
##See also
**[unit.html](unit)**, **[module.html](module)**, **[monitor.html](monitor)** and **[class.html](class)**. See also **[implement_by.html](implement by)** clause, **[inherit.html](inherit)** clause, **[export.html](export)** list, and **[import.html](import)** list. See also **[deferred.html](deferred)** subprograms.
