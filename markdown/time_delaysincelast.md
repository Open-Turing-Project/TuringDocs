
# Time.DelaySinceLast

## Syntax
**Time.DelaySinceLast** ( _duration_ : **int** )

## Description
The **Time.DelaySinceLast** procedure is used to cause the program to pause for a given time since the last call to **Time.DelaySinceLast**. The time duration is in milliseconds.


## Example
This program outputs from 1 to 100,000, then outputs how long it took to do this (in milliseconds). It then calls **Time.DelaySinceLast**to wait until 10 seconds has passed since the beginning of theprogram (regardless of how long it took to execute the loop). Finallyit outputs how many milliseconds has passed since the program started.This should be close to 10,000 milliseconds.

        var t : int := Time.Elapsed
        put "Starting now, count to 100,000"
        for i : 1 .. 100000
            put i ..
            locate (whatrow, 1)
        end for
        put "Finished counting to 100,000"
        
        put "Elapsed time: ", Time.Elapsed - t, " milliseconds"
        Time.DelaySinceLast (10000)
        put "Elapsed time: ", Time.Elapsed - t, " milliseconds"
    
## Details
The **Time.DelaySinceLast** is usually used to time a process so that it operates on the same speed no matter what the machine. For example, in the above example, the program will alwyas take 10 seconds to execute, regardless of the speed of the machine (up to a point). Fast machines will spend little time in the **for**loop and longer waiting to return from **Time.DelaySinceLast**.Slower machines will take longer to execute the loop and will consequently wait less time before returning from **Time.DelaySinceLast**.

The **Time.DelaySinceLast** procedure is often used to time the speed of animation in games.

Note that this only works up to a point. On a very slow machine, the**for** loop may take longer than 10 seconds to execute, in whichcase the call to **Time.DelaySinceLast** will return instantly.


## Status
Exported qualified.

This means that you can only call the function by calling **Time.DelaySinceLast**, not by calling **DelaySinceLast**.


## See also
**[Time.Elapsed](time_elapsed.html)** and **[Time.ElapsedCPU](time_elapsedcpu.html)**.

