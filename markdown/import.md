
#import

##Syntax
An *importList* is:
 **import** [ *howImport* ] *importItem*     {, [*howImport*] *importItem* }



##Description
An **import** list is used to specify those items that a procedure, function, module, monitor, or a class uses from outside of itself. Note that a function or procedure is not allowed to have an import list and thus automatically imports whichever functions or procedures are used by the function or procedure. The compiler determines the list automatically by looking to see what items are actually used.



##Example
In this example, the type *T *is imported into the *stack ***module** and used as the type that can be pushed onto or popped off the stack. Since no other items are imported, the only identifiers from outside of *stack *that can be used in it must be predefined, such as **sqrt**, or declared to be **pervasive**.


        type T : string
        
        module stack
            import T
            export push, pop
            var top : int := 0
            var contents : array 1..100 of T
            procedure push  end push
            procedure pop  end pop
        end stack
##Details
The *importItem *is one of*:*
 (a) *id* (b) *id ***in*** fileName*
The second form is used in OOT when the list is the import list  for a separate **unit** (or the main program), and the imported item is in a file whose name is different from the item's name, for example:
The *fileName* must be an explicit character string. See also **unit**.
Parentheses are allowed around the items in an import lists, as in:
There are various ways to import items, as determined by *howImport*. The form of *howImport* is one of:
 (a) **var** (b) **const** (c) **forward**
Commonly the *howImport *is omitted, which means the default access for the item is the same access as the item has. In other words, a read-write item that is imported without a *howImport* is imported read-write. A read-only symbol that is imported without a *howImport* is imported read-only.
If the *importItem *is **forward**, the import list is part of a **forward** procedure or function declaration and the imported item is itself necessarily a procedure or function. See **forward** declarations for details and an example.
If the **import** list of a **module**, **monitor** or **class** is omitted, the implementation assumes that the list is **import**( ), meaning that no items are imported. For example, a **module** must explicitly import any global identifiers that are not predefined or **pervasive**.
Circular (recursive) imports are not allowed. For example, if unit *A* imports *B* then *B* cannot import *A*. However, circular usage of separately compiled units is possible by separating the units into interfaces and bodies and having the bodies import the interfaces. For example, if *C* is the parent class of *D*, *D* can import *C*, but not vice versa.
In an expansion (or implementation), the import list of the expansion augments the import list of the parent.
An overriding subprogram (in an expansion) ignores the import list of the target subprogram and uses its own import list.
Turing initializes modules and monitors  in order of importation. Initialization begins with the main program, which first initializes its imports in the order given in its **import** list, and then initializes itself.


        import ledger in "newledg.t"        import ( ledger in "newledg.t" )
##See also
**[unit.html](unit)**, **[module.html](module)**, **[monitor.html](monitor)** and **[class.html](class)**. See also **[export.html](export)** list, **[inherit.html](inherit)** clause, **[implement.html](implement)** clause and **[implement_by.html](implement by)** clause.


