
#in

##Syntax
**in**


##Description
The **in** operator determines if an element is in a set.


##Example


        type rankSet : set of 0 .. 10
        var rankings : rankSet := rankSet ( 0 )  % The set {0}
        
        if 5 in rankings then      % Is 5 in the rankings set?
##Description
The **not** **in** operator is exactly the opposite of **in**. For example, 7 **not** **in** _rankings_ means the same as **not** (7 **in** _rankings_).

The element is required to be in the set's index type. In the above example this is satisfied because element 5 is in the index type 0 .. 10.

The keyword **in** is also used in lists such as **import** lists. See **import** list.


##See also
the **[set.html](set)** type, _[infix.html](infix) operators_, and _[precedence.html](precedence)_ of operators.

