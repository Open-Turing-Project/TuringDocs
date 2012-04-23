
#rem

##Syntax
**rem**


##Description
The **rem** (_remainder_] operator produces the remainder of one number divided by  another. For example, 7 **rem** 2 produces 1 and -12 **rem** 5 produces -2.


##Example
In this example, _eggCount_ is the total number of eggs. The first **put** statement determines how many dozen eggs there are. The second **put** statement determines how many extra eggs there are beyond the last dozen.

        var eggCount : int
        get eggCount
        put "You have ", eggCount div 12, " dozen eggs"
        put "You have ", eggCount rem 12, " left over"
##See also
_[infix.html](infix) operators_, _[precedence.html](precedence)_ of operators and the **[mod.html](mod)** and **[div.html](div)** operators.

