
#Rand.Set

##Syntax
**Rand.Set** (_seed_ : **nat4**)


##Description
This procedure sets the seed for sequences of pseudo-random numbers produced by **Rand.Real** and **Rand.Int**. This allows identical executions of the same program to produce identical results.


##Example
This program simulates the repeated rolling of a six sided die. Each time the program runs, the same sequence of rolls occurs.

        Rand.Set (16#1234ABCD)
        loop
            put "Rolled ", Rand.Int (1, 6)
        end loop
##Details
If **Rand.Reset** and **Rand.Set** are not used, each time a program runs **Rand.Real** and **Rand.Int** use a different pseudo-random number sequence. To get the same sequence each time (actually, to start the sequence at a different point), use **Rand.Reset** or **Rand.Set**.

To use several sequences of repeatable pseudo-random number sequences, use the **Rand.Seed** and **Rand.Next** procedures.


##Status
Exported qualified.

This means that you can only call the function by calling **Rand.Set**, not by calling **Set**.


##See also
**[rand_reset.html](Rand.Reset)**, **[rand_int.html](Rand.Int)**, **[rand_real.html](Rand.Real)**, **[rand_seed.html](Rand.Seed)** and **[rand_next.html](Rand.Next)**.

