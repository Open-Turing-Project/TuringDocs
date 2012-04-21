
#array

##Syntax
**array** *indexType* { , *indexType* } **of** *typeSpec*

##Description
An array consists of a number of elements. The *typeSpec* gives the type of these elements. There is one element for each item in the (combinations of) range(s) of the *indexType(s)*. In the following example, the array called *marks* consists of 100 elements, each of which is an integer.

##Example

        var marks : array 1 .. 100 of int
        
        var sum : int := 0
        for i : 1 .. 100        % Add up the elements of marks
            sum := sum + marks (i)
        end for
##Details
In the above example, *marks(i)* is the *i*-th element of the *marks* array. We call *i* the *index* or *subscript* of *marks*. In Turing, a subscript is surrounded by parentheses, not by square brackets as is the case in the Pascal or C-like languages.

##Example
The *prices* array shows how an array can have more than one dimension. This array has one dimension for the year (1988, 1989 or 1990) and another for the month (1 .. 12). There are 36 elements of the array, one for each month of each year.
        var price : array 1988 .. 1990, 1 .. 12 of int
        
        var sum : int := 0
        for year : 1988 .. 1990     % For each year
            for month : 1 .. 12     % For each month
                sum := sum + price (year, month)
            end for
        end for
##Details
Each *indexType* must contain at least one item. The range 1 .. 0, for example, would not be allowed. Each index type must be a subrange of the integers, characters (the **char** type), or of an enumerated type, an (entire) enumerated type, the **char** type, the **boolean **type, or a named type which is one of these.
Arrays can also be declared in the form
The upper bound of *a* will be computed from the count of the initializing values. Both **var** and **const** arrays can be declared this way. An array variable/constant declared with "*" as an upper bound must have an initializing list. Only one dimensional arrays may be declared in this form.
Arrays can be assigned as a whole (to arrays of an equivalent type), but they cannot be compared.
An array can be initialized in its declaration using **init**. For details, see **var** and **const** declarations.
        var a : array 1 .. * of typeSpec := init ()
##Example
In this example, the size of the array is not known until run time.
        var howMany : int
        get howMany
        var height : array 1 .. howMany of real
            read in all the elements of this array
        function total (a : array 1 .. * of real) : real
            var sum : real := 0
            for i : 1 .. upper (a)
                sum := sum + a (i)
            end for
            result sum
        end total
        
        put "Sum of the heights is ", total (height)
##Details
The ends of the range of a subscript are called the *bounds* of the array. If these values are not known until run time, the array is said to be *dynamic*. In the above example, *height* is a dynamic array. Dynamic arrays can be declared as variables, as in the case for *height*. However, dynamic arrays cannot appear inside other types such as records, and cannot be named types. Dynamic arrays cannot be assigned and cannot be initialized using **init**.
In the above example, **upper***(a) *returns the size of *a*. See also **upper** and **lower**.
In the declaration of an array parameter, the upper bound can be given as an asterisk (*****), as is done in the above example. This means that the upper bound is taken from that of the corresponding actual parameter (from *height* in this example).
You can have arrays of other types, for example arrays of record. If *R *is an array of records, then *R(i).f* is the way to access the *f* field of the *i*-th element of array *R*.

##Details
Arrays can also be made resizeable. This is done using the **flexible** keyword. The declaration syntax is:
The indices may have compile-time or run-time upper bounds (the lower bound must be compile-time). The upper bounds can be changed by using:
The existing array entries will retain their values, except that any index made smaller will have the corresponding array entries lost. Any index made larger will have the new array entries uninitialized (if applicable).
Additionally, the upper bound (both in the declaration and the **new** statement) can be made one less than the lower bound. This effectively makes an array that contains 0 elements. It can later be increased in size with another **new**.
In the current implementation (2002), with a multi-dimensional array with a non-zero number of total elements, it is a run-time error to change any but the first dimension (unless one of the new upper bounds is one less than the corresponding lower bound, giving 0 elements in the array) as the algorithm to rearrange the element memory locations has not yet been implemented.
Currently, only variables can be declared in this form. There is no flexible array parameter type, although a flexible array can be passed to an array parameter with ***** as the upper bound.
        var name : flexible array indexType { , indexType } of typeSpec        new name , newUpper1 {,newUpper2}
##Example
In this example, the array is resized to fit the number of elements in the file.
        function getLines (fileName : string) : int
            var f, numLines : int
            var line : string
            open : f, fileName, get
            numLines := 0
            loop
                exit when eof (f)
                get : f, line : *
                numLines += 1
            end loop
            close : f
            result numLines
        end getLines 
        
        procedure readFile (var lines : array 1 .. * of string, fileName : string)
            var f : int
            var line : string
            open : f, fileName, get
            for i : 1 .. upper (lines)
                get : f, lines (i) : *
            end for    
			close : f
        end readFile
            
        var lines : flexible array 1 .. 0 of string
        new lines, getLines ("text.dat")
        readFile (lines, "text.dat")
        for i : 1 .. upper (lines)
            put lines (i)
        end for
##See also
**[init.html](init)** to initialize arrays, **[flexible.html](flexible)** to declare resizable arrays and *[indextype.html](indexType)* to specify the index of an array.
