
#Concurrency.simutime

##Syntax
**simutime** : **int**


##Description
The **simutime** function returns the number of simulated time units that have passed since program execution began.


##Details
Simulated time only passes when all process are either paused or waiting. This simulates the fact that CPU time is effectively infinitely faster than "pause" time.


##Example
This prints out the simulated time passing between two processes. This will print out _3, 5, 6, 9, 10, 12, 15, 15, 18, 20, 21, ..._

        process p (t : int)
            loop
                pause t
                put simutime
            end loop
        end p
        
        fork p (3)
        fork p (5)
##Status
Exported unqualified.

This means that you can call the function by calling **simutime** or by calling **Concurrency.simutime**.

