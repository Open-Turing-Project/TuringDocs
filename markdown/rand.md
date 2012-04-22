
#rand

##Syntax
**rand** (**var** _r_ : **real**)



##Description
The **rand** statement is used to create a pseudo-random number in the range zero to one. For example, if _x_ is a real number, after **rand**(_x_), _x_ would have a value such as 0.729548 or 0.352879.



##Example
This program repeatedly and randomly prints out _Hi ho_, _hi ho_ or _It's off to work we go_.


        var r : real
        loop
            rand ( r )
            if r > 0.5 then
                put "Hi ho, hi ho"
            else
                put "It's off to work we go"
            end if
        end loop
##Details
The **rand** statement sets its parameter to the next value of a sequence of pseudo-random real numbers that approximates a uniform distribution over the range 0<_r_ <1.
Each time a program runs, **rand** uses a different pseudo-random number sequence. To get the same sequence (use **Rand.Set**).
To use several sequences of repeatable pseudo-random number sequences, use the **randseed** and **randnext** procedures.
In many languages, **rand** would be a function rather than a procedure. It has been designed as a procedure in Turing to respect the mathematical idea that every call to a function using the same arguments (or no arguments at all) should return the same value. If **rand** were a function, this would not be true.



##See also
**[randint.html](randint)**, **[randomize.html](randomize)**, **[randseed.html](randseed)** and **[randnext.html](randnext)**.
See also predefined unit **[randmodule.html](Rand)**.


