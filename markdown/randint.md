
#randint

##Syntax
**randint** ( **var** _i_ : **int**, _low_, _high_ : **int** )


##Description
The **randint** statement is used to create a pseudo-random integer in the range _low_ to _high_, inclusive. For example, if _i_ is an integer, after **randint**(_i_,1, 10), _i_ would have a value such as 7 or 2 or 10.


##Example
This program simulates the repeated rolling of a six sided die.

        var roll : int
        loop
            randint ( i, 1, 6 )
            put "Rolled ", i
        end loop
##Details
The **randint** statement sets its parameter to the next value of a sequence of pseudo-random integers that approximates a uniform distribution over the range _low_ =_i_ = _high_. It is required that _low_ = _high_.

Each time a program runs, **randint** uses the same pseudo-random number sequence. To get a different sequence (actually, to start the sequence at a different point), use the **randomize** procedure.

To use several sequences of repeatable pseudo-random number sequences, use the **randseed** and **randnext** procedures.


##See also
**[rand.html](rand)**, **[randomize.html](randomize)**, **[randseed.html](randseed)** and **[randnext.html](randnext)**.

