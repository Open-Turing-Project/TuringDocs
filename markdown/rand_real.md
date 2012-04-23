
#Rand.Real

##Syntax
**Rand.Real** : **real**


##Description
The **Rand.Real** function returns a pseudo-random number in the range zero to one. For example, if _x_ is a real number, after _x_ := **Rand.Real**, _x_ would have a value such as 0.729548 or 0.352879.


##Example
This program repeatedly and randomly prints out _Hi ho_, _hi ho_ or _It's off to work we go_.

        loop
            if Rand.Real > 0.5 then
                put "Hi ho, hi ho"
            else
                put "It's off to work we go"
            end if
        end loop
##Details
The **Rand.Real** function sets its parameter to the next value of a sequence of pseudo-random real numbers that approximates a uniform distribution over the range 0<_r_ <1.

Each time a program runs, **Rand.Real** uses a different pseudo-random number sequence. To always get the same sequence (actually, to start the sequence at the same point), use the **Rand.Set** procedure.

To use several sequences of repeatable pseudo-random number sequences, use the **Rand.Seed** and **Rand.Next** procedures.


##Status
Exported qualified.

This means that you can only call the function by calling **Rand.Real**, not by calling **Real**.


##See also
**[rand_int.html](Rand.Int)**, **[rand_set.html](Rand.Set)**, **[rand_seed.html](Rand.Seed)** and **[rand_next.html](Rand.Next)**.

