
#declaration

##Syntax
A _declaration_ is one of:


(a) _variableDeclaration_
(b) _constantDeclaration_
(c) _typeDeclaration_
(d) _bindDeclaration_
(e) _procedureDeclaration_
(f) _functionDeclaration_
(g) _moduleDeclaration_
(h) _classDeclaration_
(i) _processDeclaration_
(j) _monitorDeclaration_
(k) _conditionDeclaration_



##Description
A _declaration_ creates a new name (or names) for a variable, constant, type, procedure, function, module, class, process, monitor, or condition. These names are called _identifiers_, where _id_ is the abbreviation for _identifier_.


##Example


        var width : int         % Variable declaration
        const pi := 3.14159     % Constant declaration
        type range : 0 .. 150       % Type declaration
        
        procedure greet         % Procedure declaration
            put "Hello  world"
        end greet
##Details
Ordinarily, each new name must be distinct from names that are already visible; that is, redeclaration is not allowed. There are certain exceptions to this rule, for example, names of parameters and fields of records can be the same as existing visible variables. Variables declared inside a subprogram (a procedure and function) are allowed to be the same as variables global to (outside of) the subprogram.

The effect of a declaration (its _scope_) lasts to the end of the construct in which the declaration occurs; this will be the end of the program, the **end** of the surrounding procedure, function or module, the **end** of a **loop**, **for**, **case** or **begin** statement, or the end of the **then**, **elsif**, or **else** clause of an **if** statement, or the end of the **case** statement alternative.

A name must be declared before it can be used; this is called the _DBU_ (_Declaration Before Use_) rule. The exceptions to this rule use the keyword **forward**, as in **import** lists and in **collection** declarations.

A _declaration_ can appear any place a _statement_ can appear. This differs from the Pascal language, in which declarations are allowed only at the beginning of the program or at the beginning of a procedure or function. Each declaration can optionally be followed by a semicolon (;).

There are certain restrictions on the placement of declarations. Procedures and functions cannot be declared inside other procedures and functions nor inside statements (for example, not inside an **if** statement). A **bind** declaration cannot appear at the outer level of either the main program or a module. A **condition** declaration can appear only inside a monitor. Processes cannot be declared inside procedures, functions, monitors or classes. Classes cannot be declared inside classes. However, modules and monitors can be declared inside classes and vice versa. Monitors can be declared inside modules, not vice versa.

