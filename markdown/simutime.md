
#simutime

##Syntax
**simutime** : **int**

##Description
The **simutime** function returns the number of simulated time units that have passed since program execution began.

##Details
Simulated time only passes when all process are either paused or waiting. This simulates the fact that CPU time is effectively infinitely fast when compared to "pause" time.

##Example
This prints out the simulated time passing between two processes. This will print out *3*,* 5*,* 6*,* 9*,* 10*,* 12*,* 15*,* 15*,* 18*,* 20*,* 21*,* *
        process p (t : int)
            loop
                pause t
                put simutime
            end loop
        end p
        
        fork p (3)
        fork p (5)
##See also
See also predefined unit **[concurrencymodule.html](Concurrency)**.