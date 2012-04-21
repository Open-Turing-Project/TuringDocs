
#inherit

##Syntax
An *inheritClause *is:
 **inherit** *inheritItem*



##Description
An **inherit** clause specifies that the class containing the clause is to be an expansion of another class. This expansion is called *inheritance*. The class containing the clause gains access to (inherits) all the declarations inside the target item. Expansions are used to add new declarations and exports and to support *polymorphism* (overriding subprograms).



##Example
Here is an example of a stack class. Following it, we show another class, called *stackWithDepth*, that inherits *stack* by adding a function called *depth*.
Next comes an expansion, which inherits the internal declarations of the stack class and adds the *depth* function.


        class stack
            export push, pop
        
            var top : int := 0
            var contents : array 1 .. 100 of string
        
            procedure push ( s : string )
                top := top + 1
                contents (top ) := s
            end push
        
            procedure pop ( var s : string )
                s := contents ( top )
                top := top - 1
            end pop
        end stack        class stackWithDepth
            inherit stack
            export depth
            function depth : int
                result top
            end push
        end stackWithDepth
##Details
Objects of the inherited class *stackWithDepth* are like objects of the parent class *stack*, except there is an additional exported function named *depth*.
An *inheritItem* is one of:
 (a) *id* (b) *id* **in** *fileName*
The second form is used when the inherit clause is for a separate **unit** and the imported item is in a file whose name is different from the item's name, for example:
The *fileName* must be an explicit character string, e.g., "*newledg.t*". Parentheses are allowed around the item in an inherit clause, as in:
There is a special form of **inherit** clause, called an **implement** **clause**, that is used to separate an interface from an implementation. Modules and monitors, as well as classes, use these clauses. See **implement** clause and **implement** **by** clause.
If class *D* inherits class *C*, we say that *C *is the *parent* and *D *is the *child*. Class *B* is said to be an *ancestor* of class *D *(and *D* is the *descendant* of *B*) if *B* and *D* are the same class, or if *B* is the parent of *D*, or if *B* is the parent of the parent of *D*, etc. We write this as follows:
If *B* is an ancestor of *D* but not the same as *D*, we say *B* is a *strict* ancestor of *D*. We write this as:
We also use the notations *D* >= *B*, *D* > *B* and *D* = *B* with the obvious meanings. All of these notations can be used in a program. Their main use is in conjunction with **objectclass**, which determines the class of an object located by a pointer. For example, if *p* is declared to be a pointer to a *stack*, we can write the following to see if *p *currently locates an object with the *depth* operation:
A pointer that locates an object created as class *E* can be assigned to a pointer to class *B*, only if *B* is an ancestor of *E*. For example, a pointer to an object that is a *stackWithDepth* can be assigned to a pointer to *stack*, but not vice versa. The pointer **nil** can be assigned to any pointer variable, but the value **nil**(*C*) can only be assigned to a pointer to an ancestor of C.
An object (located by a pointer) can be assigned to another object only if they were created as objects of the same class. However, assignment of objects that are monitors or that contain dynamic arrays or collections is not allowed.
Circular (recursive) inherits are not allowed. For example, if unit *B* inherits *A* then *A* cannot inherit *B*. Only one item is allowed in an inherit clause; in other words, Turing supports *single* inheritance but not *multiple* inheritance.
See **implement** clause for a special kind of expansion that separates a module, monitor or class' interface from its implementation. See **class** for an example of polymorphism, in which an inheriting class overrides subprograms of its parent class.
The initialization of a module, a monitor or an object is immediately preceded by the initialization of the item that it inherits or implements (if any). Correspondingly, if the item has an **implement** **by** clause, the implementation is initialized immediately after the initialization of the current item.
Within a class *C*, with ancestor *B*, you can force a call to exported subprogram *p* using the form *C.p* (or* B.p*). This calls the subprogram declared in *C* (or in *B* in the case of *B.p*), regardless of the actual class of the object and any overriding of *p*. This is similar to the notation *C*::*p* of the C++ language. This notation can only be used inside class *C*.


        inherit ledger in "newledg.t"        inherit ( ledger in "newledg.t" )        B <= D      % B is an ancestor of D        B < D       % B is a strict ancestor of D        % Does the object located by p have the depth operation
        if stackWithDepth <= objectclass(p) then
##See also
**[unit.html](unit)**, **[module.html](module)**, **[monitor.html](monitor)** and **[class.html](class)**. See also **[export.html](export)** list, **[import.html](import)** list, **[implement.html](implement)** clause, **[implement_by.html](implement by)** clause and **[deferred.html](deferred)** subprogram. See also **[objectclass.html](objectclass)**.


