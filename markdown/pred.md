
#pred

##Syntax
**pred** ( *expn* )

##Description
The **pred** function accepts an integer, character, or an enumerated value and returns the integer minus one, the previous character, or the previous value in the enumeration. For example, **pred** ( 7 ) is 6.

##Example
This part of a Turing program fills up array *a *with the enumerated values *red*,* yellow*,* green*,* red*,* yellow*,* green*,* *etc.
        type colors : enum ( green, yellow, red )
        var a : array 1 .. 100 of colors
        var c : colors := colors . red
        for i : 1 .. 100
            a ( i ) := c
            if c = colors . green then
                c := colors . red
            else
                c := pred ( c )
            end if
        end for
##Details
It is illegal to apply **pred** to the first value of an enumeration.

##See also
**[succ.html](succ)**, **[lower.html](lower)** and **[upper.html](upper)** functions.