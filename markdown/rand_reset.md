
#Rand.Reset

##Syntax
**Rand.Reset**

##Description
This is a procedure with no parameters that resets the sequences of pseudo-random numbers produced by **Rand.Real** and **Rand.Int**. This allows identical executions of the same program to produce identical results.

##Example
This program simulates the repeated rolling of a six sided die. Each time the program runs, the same sequence of rolls occurs.
        Rand.Reset
        loop
            put "Rolled ", Rand.Int (1, 6)
        end loop
##Details
If **Rand.Reset **and** Rand.Set **are not used, each time a program runs **Rand.Real** and **Rand.Int **use a different pseudo-random number sequence. To get the same sequence each time (actually, to start the sequence at a different point), use **Rand.Reset** or **Rand.Set**.
The **Rand.Reset** procedure can be called any time. However, to make it work, it should only be called once per program. Any call to **Rand.Reset** after the first one is ignored.
To use several sequences of repeatable pseudo-random number sequences, use the **Rand.Seed **and **Rand.Next** procedures.

##Status
Exported qualified.
This means that you can only call the function by calling **Rand.Reset**, not by calling **Reset**.

##See also
**[rand_set.html](Rand.Set)**, **[rand_int.html](Rand.Int)**, **[rand_real.html](Rand.Real)**, **[rand_seed.html](Rand.Seed)** and **[rand_next.html](Rand.Next)**.
