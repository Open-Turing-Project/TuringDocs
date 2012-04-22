
#min

##Syntax
**min** ( _expn_ , _expn_ )



##Description
The **min** function is used to find the minimum of two numbers (the two _expn_'s). For example, **min** ( 5, 7 ) is 5. If both numbers are **int**, the result is **int**. If both numbers are **nat** (natural numbers), the result is **nat**. But if one or both of the numbers are **real**, the result is **real**. See also the **max** function.



##Example
This program outputs 74.61.


        var x : real := 74.61
        var y : real := 85.72
        put min ( x, y )            % Outputs 74.61
##Example
This program inputs 10 numbers and outputs their minimum.


        var m, t : real
        get m               % Input first number
        for i : 2 .. 10         % Handle remaining 9 numbers
            get t
            m := min ( m, t )
        end for
        put "The minimum is ", m
##See also
See also predefined unit **[mathmodule.html](Math)**.


