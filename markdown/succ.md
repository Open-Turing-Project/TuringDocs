
#succ

##Syntax
**succ** ( *expn* )

##Description
The **succ** function accepts an integer, character or an enumerated value and returns the integer plus one, the next character, or the next value in the enumeration. For example, **succ** (7) is 8. 

##Example
This part of a Turing program fills up array *a *with the enumerated values *green*,* yellow*,* red*,* green*,* yellow*,* red*,* *etc.
        type colors : enum ( green, yellow, red  )
        var a : array 1 .. 100 of colors
        var c : colors := colors .green
        for i : 1 .. 100
            a ( i ) := c
            if c = colors . red then
                c := colors . green
            else
                c := succ ( c )
            end if
        end for
##Details
You cannot  apply **succ** to the last value of an enumeration.

##See also
the **[pred.html](pred)**, **[lower.html](lower)** and **[upper.html](upper)** functions.
