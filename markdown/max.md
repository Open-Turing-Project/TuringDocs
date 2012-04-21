
#max

##Syntax
**max** ( *expn* , *expn* )

##Description
The **max** function is used to find the maximum of two numbers (the two *expn*'s). For example, **max** ( 5, 7 ) is 7. If both numbers are **int**, the result is **int**. If both numbers are **nat** (natural numbers), the result is **nat**. But if one or both of the numbers are **real**, the result is **real**. See also the **min** function.

##Example
This program outputs 85.72.
        var x : real := 74.61
        var y : real := 85.72
        put max ( x, y )        % Outputs 85.72
##Example
This program inputs 10 numbers and outputs their maximum.
        var m, t : real
        get m           % Input first number
        for i : 2 .. 10     % Handle remaining 9 numbers
            get t
            m := max ( m, t )
        end for
        put "The maximum is ", m
##See also
See also predefined unit **[mathmodule.html](Math)**.
