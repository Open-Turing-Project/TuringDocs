
# Rand.Next

## Syntax
**Rand.Next** (_seq_ : 1 .. 10) : **real**

## Description
The **Rand.Next** procedure is used when you need several sequences of pseudo-random numbers, and you need to be able to exactly repeat these sequences for a number of simulations. The **Rand.Next** procedure is the same as **rand**, except _seq_ specifies one of ten independent and repeatable sequences of pseudo-random real numbers.

The **Rand.Seed** procedure is used to start one of these sequences at a particular point.


## Status
Exported qualified.

This means that you can only call the function by calling **Rand.Next**, not by calling **Next**.


## See also
**[Rand.Seed](rand_seed.html)**, **[Rand.Int](rand_int.html)**, **[Rand.Real](rand_real.html)** and **[Rand.Next]()**.

