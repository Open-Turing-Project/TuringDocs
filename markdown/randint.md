
#randint

##Syntax
**randint** ( **var** *i* : **int**, *low*,* high* : **int** )

##Description
The **randint** statement is used to create a pseudo-random integer in the range *low* to *high*, inclusive. For example, if *i* is an integer, after **randint**(*i*,1, 10), *i* would have a value such as 7 or 2 or 10.

##Example
This program simulates the repeated rolling of a six sided die.
        var roll : int
        loop
            randint ( i, 1, 6 )
            put "Rolled ", i
        end loop
##Details
The **randint** statement sets its parameter to the next value of a sequence of pseudo-random integers that approximates a uniform distribution over the range *low* =*i* = *high*. It is required that *low* = *high*.
Each time a program runs, **randint** uses the same pseudo-random number sequence. To get a different sequence (actually, to start the sequence at a different point), use the **randomize** procedure.
To use several sequences of repeatable pseudo-random number sequences, use the **randseed** and **randnext** procedures.

##See also
**[rand.html](rand)**, **[randomize.html](randomize)**, **[randseed.html](randseed)** and **[randnext.html](randnext)**.
