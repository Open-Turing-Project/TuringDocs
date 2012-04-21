
#Rand.Int

##Syntax
**Rand.Int** (*low*,* high* : **int**) : **int**



##Description
The **Rand.Int **statement is used to create a pseudo-random integer in the range *low* to *high*, inclusive. For example, if *i* is an integer, after *i:=***Rand.Int **(*i*,1, 10), *i* would have a value such as 7 or 2 or 10.



##Example
This program simulates the repeated rolling of a six sided die.


        loop
            put "Rolled ", Rand.Int (1, 6)
        end loop
##Details
The **Rand.Int **statement sets its parameter to the next value of a sequence of pseudo-random integers that approximates a uniform distribution over the range *low* =*i* = *high*. It is required that *low* = *high*.
Each time a program runs, **Rand.Int** uses a different pseudo-random number sequence. To always get the same sequence (actually, to start the sequence at the same point), use the **Rand.Set** procedure.
To use several sequences of repeatable pseudo-random number sequences, use the **Rand.Seed **and **Rand.Next** procedures.



##Status
Exported qualified.
This means that you can only call the function by calling **Rand.Int**, not by calling **Int**.



##See also
**[rand_real.html](Rand.Real)**, **[rand_set.html](Rand.Set)**, **[rand_seed.html](Rand.Seed)** and **[rand_next.html](Rand.Next)**.


