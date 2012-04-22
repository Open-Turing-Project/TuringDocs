
#simutime

##Syntax
**simutime** : **int**



##Description
The **simutime** function returns the number of simulated time units that have passed since program execution began.



##Details
Simulated time only passes when all process are either paused or waiting. This simulates the fact that CPU time is effectively infinitely fast when compared to "pause" time.



##Example
This prints out the simulated time passing between two processes. This will print out _3_,_ 5_,_ 6_,_ 9_,_ 10_,_ 12_,_ 15_,_ 15_,_ 18_,_ 20_,_ 21_,_ &#133;_


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


