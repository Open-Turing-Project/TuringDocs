
#subrangeType

##Syntax
A _subrangeType_ is:

_expn_ .. _expn_




##Description
A subrange type defines a set of values, for example, the subrange 1 .. 4 consists of 1, 2, 3 and 4.



##Example



        var i : 1 .. 10         % i can be 1, 2  up to 10
        type xRange : 0 .. 319      % Define integer subrange
        var pixels : array xRange of int
                            % Array elements are
                            % numbered 0, 1,  319
        for k : xRange          % k ranges from 0 to 319
            pixels ( k ) := 0
        end for
##Details
A subrange must contain at least one element. In other words, the second expression (_expn_) must be at least as large as the first expression.
The lower bound of a subrange must be known at compile time. The upper bound is allowed to be a run time value only in one situation and that is when it gives the upper bound of an array being declared in a variable declaration, in other words when declaring a _dynamic_ array.
Subranges are usually a subset of the integers, as in 1 .. 10. You can also have subranges of enumerated types and characters (the **char** type).
You can apply **lower** and **upper** to subrange types.


