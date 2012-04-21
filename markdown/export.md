
#export

##Syntax
An *exportList* is:
 **export** [ *howExport* ] *id*  {, [ *howExport* ] *id* }

##Description
An **export** list is used to specify those items declared in a module, monitor or class that can be used outside of it. Items that are declared inside a module, monitor or class but not exported cannot be accessed outside of it.

##Example
In this example, the procedures names *pop* and *push* are exported from the *stack* module. These two procedures are called from outside the module on the last and third from last lines of the example. Notice that the word *stack* and a dot must precede the use of these names. Since *top *and *contents* were not exported, they can be accessed only from inside the module.
        module stack
            export push, pop
            var top : int := 0
            var contents : array 1..100 of string
            procedure push  end push
            procedure pop  end pop
        end stack
        
        stack . push ("Harvey")
        var name : string
        stack . pop (name)      % This sets name to Harvey
##Details
Procedures, functions, variables, constants and types can be exported. Modules, monitors or classes canot be exported. Parentheses are allowed around the items in an export list, as in:
The following syntax specifies that each exported identifier can optionally be preceded by the keywords **var**, **unqualified**, **pervasive** and **opaque**. Of these, only **opaque** is available in Turing proper.
The form of *howExport* is:
 { *exportMethod* }
The form of *exportMethod* is one of:
 (a) **var** (b) **unqualified** (c) **pervasive** (d) **opaque**
The keyword **var** means that the exported variable can be changed outside of the exporting module, monitor or class. This keyword applies only to exported variables. For example, if string variable *name *is exported **var** from module *M*,* name *can be changed from outside of *M* by *M.name *:= "*Surprise!*".
The keyword **unqualified** means that references to the exported item do not need to be prefixed by the name of the exporting item. For example, if module *M* exports procedure *p* unqualified, a call to *p* outside of *M* can be simply *p* instead of the usual *M.p*. A class cannot export variables or dynamic constants unqualified (because each object of the class has its own copies of these). The only things a class can export unqualified are types and compile time constants. The keyword **unqualified** can be abbreviated to ~. which is pronounced as "not dot".
The keyword **pervasive**, which is only meaningful if **unqualified** is also present, specifies that the exported item is to be visible in subsequent scopes, in other words that it is not necessary to import it into internal modules, monitors and classes.
The keyword **opaque**, which can only precede type names, specifies that outside the module, monitor or class, the type is considered to be distinct from all other types. This means, for example, that if the type is an array, it cannot be subscripted outside of the module. See **module** declaration for an example that uses opaque types. In most cases, classes are preferable to opaque types.
Exported subprograms are considered to be **deferred**, meaning that expansions are allowed to override these subprograms. See also **deferred** subprograms. These can be overridden using the keyword **body** before the resolving subprogram body.
A class cannot export items from its parent or it parent's ancestors. All exported item must be declared in the current class.
        export (push, pop)
##Details
You can export **all** from a module, monitor or a class. This means that every sibmle that is legal to export is exported. You may also qualify the all, as in **export opaque unqualified pervasive all** where the qualifiers are added to each export item (if it makes sense).
If **all** is specified as the export item, no other item may be specified. Also, and **all** export affects only the module, monitor or class that it is given in. Any inheriting or implementing module, monitor or class does not export **all** unless they also specify it.

##See also
**[unit.html](unit)**, **[module.html](module)**, **[monitor.html](monitor)** and **[class.html](class)**. See also **[import.html](import)** list, **[inherit.html](inherit)** clause, **[implement.html](implement)** clause, **[implement.html](implement)** **by** clause and **[deferred.html](deferred)** subprogram.
