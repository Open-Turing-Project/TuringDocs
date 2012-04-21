
#declaration

##Syntax
A *declaration* is one of:
 (a)*variableDeclaration* (b)*constantDeclaration* (c)*typeDeclaration* (d)*bindDeclaration* (e)*procedureDeclaration* (f)*functionDeclaration* (g)*moduleDeclaration* (h)*classDeclaration* (i)*processDeclaration* (j)*monitorDeclaration* (k)*conditionDeclaration*



##Description
A *declaration* creates a new name (or names) for a variable, constant, type, procedure, function, module, class, process, monitor, or condition. These names are called *identifiers*,* *where *id* is the abbreviation for *identifier*.



##Example



        var width : int         % Variable declaration
        const pi := 3.14159     % Constant declaration
        type range : 0 .. 150       % Type declaration
        
        procedure greet         % Procedure declaration
            put "Hello  world"
        end greet
##Details
Ordinarily, each new name must be distinct from names that are already visible; that is, redeclaration is not allowed. There are certain exceptions to this rule, for example, names of parameters and fields of records can be the same as existing visible variables. Variables declared inside a subprogram (a procedure and function) are allowed to be the same as variables global to (outside of) the subprogram.
The effect of a declaration (its *scope*) lasts to the end of the construct in which the declaration occurs; this will be the end of the program, the **end** of the surrounding procedure, function or module, the **end** of a **loop**, **for**, **case** or **begin** statement, or the end of the **then**, **elsif**, or **else** clause of an **if** statement, or the end of the **case** statement alternative.
A name must be declared before it can be used; this is called the *DBU *(*Declaration Before Use*) rule. The exceptions to this rule use the keyword **forward**, as in **import** lists and in **collection** declarations.
A *declaration* can appear any place a *statement* can appear. This differs from the Pascal language, in which declarations are allowed only at the beginning of the program or at the beginning of a procedure or function. Each declaration can optionally be followed by a semicolon (;).
There are certain restrictions on the placement of declarations. Procedures and functions cannot be declared inside other procedures and functions nor inside statements (for example, not inside an **if** statement). A **bind** declaration cannot appear at the outer level of either the main program or a module. A **condition** declaration can appear only inside a monitor. Processes cannot be declared inside procedures, functions, monitors or classes. Classes cannot be declared inside classes. However, modules and monitors can be declared inside classes and vice versa. Monitors can be declared inside modules, not vice versa.


