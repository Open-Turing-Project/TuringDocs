
# inherit

## Syntax
An _inheritClause_ is:   **inherit** _inheritItem_

## Description
An **inherit** clause specifies that the class containing the clause is to be an expansion of another class. This expansion is called _inheritance_. The class containing the clause gains access to (inherits) all the declarations inside the target item. Expansions are used to add new declarations and exports and to support _polymorphism_ (overriding subprograms).


## Example
Here is an example of a stack class. Following it, we show another class, called _stackWithDepth_, that inherits _stack_ by adding a function called _depth_.

Next comes an expansion, which inherits the internal declarations of the stack class and adds the _depth_ function.

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
## Details
Objects of the inherited class _stackWithDepth_ are like objects of the parent class _stack_, except there is an additional exported function named _depth_.

An _inheritItem_ is one of:


(a) _id_
(b) _id_ **in** _fileName_


The second form is used when the inherit clause is for a separate **unit** and the imported item is in a file whose name is different from the item's name, for example:

The _fileName_ must be an explicit character string, e.g., "_newledg.t_". Parentheses are allowed around the item in an inherit clause, as in:

There is a special form of **inherit** clause, called an **implement** **clause**, that is used to separate an interface from an implementation. Modules and monitors, as well as classes, use these clauses. See **implement** clause and **implement** **by** clause.

If class _D_ inherits class _C_, we say that _C_ is the _parent_ and _D_ is the _child_. Class _B_ is said to be an _ancestor_ of class _D_ (and _D_ is the _descendant_ of _B_) if _B_ and _D_ are the same class, or if _B_ is the parent of _D_, or if _B_ is the parent of the parent of _D_, etc. We write this as follows:

If _B_ is an ancestor of _D_ but not the same as _D_, we say _B_ is a _strict_ ancestor of _D_. We write this as:

We also use the notations _D_ >= _B_, _D_ > _B_ and _D_ = _B_ with the obvious meanings. All of these notations can be used in a program. Their main use is in conjunction with **objectclass**, which determines the class of an object located by a pointer. For example, if _p_ is declared to be a pointer to a _stack_, we can write the following to see if _p_ currently locates an object with the _depth_ operation:

A pointer that locates an object created as class _E_ can be assigned to a pointer to class _B_, only if _B_ is an ancestor of _E_. For example, a pointer to an object that is a _stackWithDepth_ can be assigned to a pointer to _stack_, but not vice versa. The pointer **nil** can be assigned to any pointer variable, but the value **nil**(_C_) can only be assigned to a pointer to an ancestor of C.

An object (located by a pointer) can be assigned to another object only if they were created as objects of the same class. However, assignment of objects that are monitors or that contain dynamic arrays or collections is not allowed.

Circular (recursive) inherits are not allowed. For example, if unit _B_ inherits _A_ then _A_ cannot inherit _B_. Only one item is allowed in an inherit clause; in other words, Turing supports _single_ inheritance but not _multiple_ inheritance.

See **implement** clause for a special kind of expansion that separates a module, monitor or class' interface from its implementation. See **class** for an example of polymorphism, in which an inheriting class overrides subprograms of its parent class.

The initialization of a module, a monitor or an object is immediately preceded by the initialization of the item that it inherits or implements (if any). Correspondingly, if the item has an **implement** **by** clause, the implementation is initialized immediately after the initialization of the current item.

Within a class _C_, with ancestor _B_, you can force a call to exported subprogram _p_ using the form _C.p_ (or _B.p_). This calls the subprogram declared in _C_ (or in _B_ in the case of _B.p_), regardless of the actual class of the object and any overriding of _p_. This is similar to the notation _C_::_p_ of the C++ language. This notation can only be used inside class _C_.

        inherit ledger in "newledg.t"        inherit ( ledger in "newledg.t" )        B <= D      % B is an ancestor of D        B < D       % B is a strict ancestor of D        % Does the object located by p have the depth operation
        if stackWithDepth <= objectclass(p) then
## See also
**[unit](unit.html)**, **[module](module.html)**, **[monitor](monitor.html)** and **[class](class.html)**. See also **[export](export.html)** list, **[import](import.html)** list, **[implement](implement.html)** clause, **[implement by](implement_by.html)** clause and **[deferred](deferred.html)** subprogram. See also **[objectclass](objectclass.html)**.

