
# Rand.Int

## Syntax
**Rand.Int** (_low_, _high_ : **int**) : **int**

## Description
The **Rand.Int** statement is used to create a pseudo-random integer in the range _low_ to _high_, inclusive. For example, if _i_ is an integer, after _i:=_**Rand.Int** (_i_,1, 10), _i_ would have a value such as 7 or 2 or 10.


## Example
This program simulates the repeated rolling of a six sided die.

        loop
            put "Rolled ", Rand.Int (1, 6)
        end loop
## Details
The **Rand.Int** statement sets its parameter to the next value of a sequence of pseudo-random integers that approximates a uniform distribution over the range _low_ =_i_ = _high_. It is required that _low_ = _high_.

Each time a program runs, **Rand.Int** uses a different pseudo-random number sequence. To always get the same sequence (actually, to start the sequence at the same point), use the **Rand.Set** procedure.

To use several sequences of repeatable pseudo-random number sequences, use the **Rand.Seed** and **Rand.Next** procedures.


## Status
Exported qualified.

This means that you can only call the function by calling **Rand.Int**, not by calling **Int**.


## See also
**[Rand.Real](rand_real.html)**, **[Rand.Set](rand_set.html)**, **[Rand.Seed](rand_seed.html)** and **[Rand.Next](rand_next.html)**.

