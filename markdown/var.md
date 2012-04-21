
#var

##Syntax
A *variableDeclaration* is one of:
 (a)**var** *id* { ,*id* } [ :*typeSpec*] [:=*initializingValue*] (b)*collectionDeclaration*

##Description
A variable declaration creates a new variable (or variables). Only form (a) will be explained here. See *collectionDeclaration *for explanation of form (b). The *typeSpec *of form (a) can be omitted only if the initializing value is present.

##Example

        var j, k : int := 1     % j and k are assigned value 1
        var t := "Sample"       % The type of t is string
        var v : array 1 .. 3 of string ( 6 ) :=
                init ( "George", "Fred", "Alice" )
##Details
The initializing value, if present, must be an expression or else a list of items separated by commas inside **init** (  ). The syntax of *initializingValue *is one of:
 (a) expn (b) **init** ( initializingValue {, initializingValue } )
Each **init** (  ) corresponds to an array, record or union value that is being initialized. These must be nested for initialization of nested types.
If the *typeSpec* is omitted, the variable's type is taken to be the (root) type of the initializing expression, for example, **int** or **string**. The *typeSpec* cannot be omitted for dynamic arrays or when the initializing value is of the form **init** (  ). The values inside **init** (  ) must be known at compile time.
The keyword **pervasive** can be inserted just after **var**. When this is done, the variable is visible inside all subconstructs of the variable's scope. Without **pervasive**, the variable is not visible inside modules unless explicitly imported. Pervasive variables need not be imported. You can abbreviate **pervasive** as an asterisk (*****).
OOT extends Turing in the following way. OOT changes form (a) to allow the optional use of the **register** keyword to request that the variable be placed in a machine register. The OOT syntax for form (a) is actually:
In the current (1994) OOT implementation, programs are run interpretively using pseudo-code, which has no machine registers, and the **register** keyword is ignored. See **register** for restrictions on the use of register variables.
        var [pervasive] [register] id { , id } [ : typeSpec ] [ := initializingValue ]
##See also
**[collection.html](collection)**, **[bind.html](bind)**, **[procedure.html](procedure)** and **[function.html](function)** declarations, parameter declarations, **[export.html](export)** lists and **[import.html](import)** lists for other uses of the keyword **[](var)**.
