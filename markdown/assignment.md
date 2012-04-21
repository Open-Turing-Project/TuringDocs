
#assignment

##Syntax
An *assignmentStatement* is:
 *variableReference* := *expn*

##Description
An assignment statement calculates the value of the expression (*expn*) and assigns that value to the variable (*variableReference*).

##Example

        var i : int
        i := 24         % Variable i becomes 24
        var a : array 1 .. 25 of string
        a (i) := "Ralph"        % The i-th element of a becomes "Ralph"
        
        var b : array 1 .. 25 of string
        b := a          % Array b becomes (is assigned) array a
##Details
The expression on the right of := must be *assignable *to the variable on the left. For example, in the above, any integer value, such as 24, is assignable to *i*,* *but a **real** value such as 3.14 would not be not assignable to *i*. Entire arrays, records and unions can be assigned. For example, in the above, array *a* is assigned to array *b*. See *assignability *for the exact rules of allowed assignments.
You cannot assign a new value to a constant (**const**).
There are short forms that allow you to write assignment statements more compactly. For example,
 *i* := *i* + 1
can be shortened to
 *i* += 1
In Turing, there are short forms for combining +, = and * with assignment. For example, *i* *= 2 doubles *i*.
There are also short forms to allow any binary operator to be combined with assignment. For example, *i* **shl**= 2 shifts *i* by 2 to the left.
