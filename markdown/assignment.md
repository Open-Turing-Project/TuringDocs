
#assignment

##Syntax
An _assignmentStatement_ is:

_variableReference_ := _expn_




##Description
An assignment statement calculates the value of the expression (_expn_) and assigns that value to the variable (_variableReference_).



##Example



        var i : int
        i := 24         % Variable i becomes 24
        var a : array 1 .. 25 of string
        a (i) := "Ralph"        % The i-th element of a becomes "Ralph"
        
        var b : array 1 .. 25 of string
        b := a          % Array b becomes (is assigned) array a
##Details
The expression on the right of := must be _assignable _to the variable on the left. For example, in the above, any integer value, such as 24, is assignable to _i_,_ _but a **real** value such as 3.14 would not be not assignable to _i_. Entire arrays, records and unions can be assigned. For example, in the above, array _a_ is assigned to array _b_. See _assignability _for the exact rules of allowed assignments.
You cannot assign a new value to a constant (**const**).
There are short forms that allow you to write assignment statements more compactly. For example,



can be shortened to



In Turing, there are short forms for combining +, = and * with assignment. For example, _i_ *= 2 doubles _i_.
There are also short forms to allow any binary operator to be combined with assignment. For example, _i_ **shl**= 2 shifts _i_ by 2 to the left.


