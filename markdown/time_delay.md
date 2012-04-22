
#Time.Delay

##Syntax
**Time.Delay** ( _duration_ : **int** )



##Description
The **Time.Delay **procedure is used to cause the program to pause for a given time. The time duration is in milliseconds.



##Example
This program prints the integers 1 to 10 with a second delay between each.


        for i : 1 .. 10
            put i
            Time.Delay ( 1000 ) % Pause for 1 second
        end for
##Status
Exported qualified.
This means that you can only call the function by calling **Time.Delay**, not by calling **Delay**.



##See also
**[time_elapsed.html](Time.Elapsed)** and **[time_elapsedcpu.html](Time.ElapsedCPU)**.


