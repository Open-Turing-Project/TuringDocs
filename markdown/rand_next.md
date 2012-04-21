
#Rand.Next

##Syntax
**Rand.Next** (*seq* : 1 .. 10) : **real**



##Description
The **Rand.Next** procedure is used when you need several sequences of pseudo-random numbers, and you need to be able to exactly repeat these sequences for a number of simulations. The **Rand.Next** procedure is the same as **rand**, except *seq* specifies one of ten independent and repeatable sequences of pseudo-random real numbers.
The **Rand.Seed** procedure is used to start one of these sequences at a particular point.



##Status
Exported qualified.
This means that you can only call the function by calling **Rand.Next**, not by calling **Next**.



##See also
**[rand_seed.html](Rand.Seed)**, **[rand_int.html](Rand.Int)**, **[rand_real.html](Rand.Real)** and **[](Rand.Next)**.


