
#const

##Syntax
A *constantDeclaration* is:
 **const** *id* [ : *typeSpec* ] := *initializingValue*



##Description
A const declaration creates a name *id* for a value.



##Example



        const c := 3
        const s := "Hello"      % The type of s is string
        const x := sin (y) ** 2
        const a : array 1..3 of int := init (1, 2, 3)
        const b : array 1..3 of int := a
        const c : array 1..2, 1..2 of int := init (1, 2, 3, 4)
                % So c(1,1)=1, c(1,2)=2, c(2,1)=3, c(2,2)=4
##Details
The initializing value can be an arbitrary value or else a list of items separated by commas inside **init** (). The syntax of *initializingValue *is:
 a. *expn* b. **init** (initializingValue, initializingValue)
Each **init** () corresponds to an array, record or union value that is being initialized. These must be nested for initialization of nested types. In the Pascal language, constants must have values known at compile time; Turing has no such restriction.
When the typeSpec is omitted, the variable's type is taken to be the (root) type of the initializing expression, for example, **int** or **string**. The typeSpec cannot be omitted for dynamic arrays or when the initializing value is of the form **init** (). The values inside **init** () must be known at compile time.
The keyword **pervasive** can be inserted just after **const**. When this is done, the constant is visible inside all subconstructs of the constant's scope. Without **pervasive**, the constant is not visible inside modules, monitors or classes unless explicitly imported. Pervasive constants need not be imported. You can abbreviate **pervasive** as an asterisk (*****).
You can also optionally use the **register** keyword to request that the constant be placed in a machine register. The syntax for constantDeclaration is actually:
In the current (2002) implementation, programs are run interpretively using pseudo-code, which has no machine registers, and the **register** keyword is ignored. See also **register** for restrictions on the use of register constants.


        const [pervasive] [register] id [ : typeSpec ] := initializingValue
