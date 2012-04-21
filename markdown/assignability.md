
#assignability

##Description
A value, such as 24, is assignable to a variable, such as *i*, if certain rules are followed. These rules, given in detail below, are called the *assignability *rules. They must be followed in assignment statements as well as when passing values to non-**var** parameters.



##Example



        var i : int
        i := 24         % 24 is assignable to i
        
        var width : 0 .. 319
        width := 3 * i      % 3 * i is assignable to width
        
        var a : array 1 .. 25 of string
        a (i) := "Ralph"        % "Ralph" is assignable to a(i)
        
        var name : string (20)
        name := a (i)       % a(i) is assignable to name
        
        
        var b : array 1 .. 25 of string
        b := a          % Array a is assignable to b
        
        type personType :
            record
                age : int
                name : string (20)
            end record
        var r, s : personType
        
        s := r          % Record r is assignable to s
##Details
The expression on the right of := must be *assignable *to the variable on the left. An expression passed to a non-**var** parameter must be assignable to the corresponding parameter.
An expression* *is defined to be *assignable *to a variable if the two *root *types are* equivalent* or if an integer value is being assigned to a **real** variable (in which case the integer value is automatically converted to **real**). Two types are considered to be equivalent if they are essentially the same type (see *equivalence *for the detailed definition of this term).
In most cases a *root* type is simply the type itself. The exceptions are subranges and strings. The *root* type of a subrange, such as 0 .. 319, is the type of its bounds (**int** type in this example). The *root* type of a string, such as the type **string**(9), is the most general string type, namely **string**.
When a subrange variable, such as *width*, is used as an expression, for example on the right side of an assignment statement, its type is considered to be the *root* type (integer in this case) rather than the subrange. When an expression is assigned to a subrange variable such as *width*, the value (3**i* in this example) must lie in the subrange. Analogously, any string variable used in an expression is considered to be of the most general type of string. When a string value is assigned to a string variable, its length must not exceed the variable's maximum length.
Turing's assignability rule applies to characters and strings in this way. A **char** value can be assigned (or passed to an non **var** parameter) with automatic conversion to a **char**(1) variable and vice versa. String values of length 1 can be assigned to **char** variables. Character, that is **char**, values can be assigned to string variables, yielding a string of length 1. String values of length *n* are assignable with automatic conversion to **char**(*n*) variables. Values of type **char**(*n*) can be assigned with automatic conversion to **string** variables.
Turing's assignability rule applies to pointers to classes in this way. A pointer that locates an object created as class *E*, can be assigned to a pointer to class *B* only if *B* is an ancestor of (or the same as) *E*. For example, a pointer to an object that is a *stackWithDepth* can be assigned to a pointer to *stack*, where *stackWithDepth* is a child of *stack*, but not vice versa. The pointer **nil** can be assigned to any pointer variable, but the value **nil**(*C*) can only be assigned to a pointer to an ancestor of C.
Objects of classes can be assigned to each other only if both were created as the same class.


