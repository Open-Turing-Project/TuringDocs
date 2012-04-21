
#div

##Syntax
**div**

##Description
The **div** operator divides one number by another and produces the integer result, truncated in the direction of zero. For example, 7 **div** 2 produces 3 and -7 **div** 2 produces -3.

##Example
In this example, *eggCount* is the total number of eggs. The first **put** statement determines how many dozen eggs there are. The second **put** statement determines how many extra eggs there are beyond the last dozen.
        var eggCount : int
        get eggCount
        put "You have ", eggCount div 12, " dozen eggs"
        put "You have ", eggCount mod 12, " left over"
##See also
*[infix.html](infix) operators*, *[precedence.html](precedence) *of operators and the **[mod.html](mod)** operator.