
#Input.Flush

##Syntax
**Input.Flush**


##Description
The **Input.Flush** procedure empties the keyboard buffer. It is often used to avoid accidentally reading multiplekeystrokes because the user pressed a key for too long, causing autorepeat.


##Example
This program echoes input from the keyboard at a rate of 10 characters per second. If you hold down a key, the echoing will stop as soon as you stoppressing the key. Without the **Input.Flush**, the program continues to echo many more keystrokes that have accumulated in the keyboard buffer.

        loop
            if hasch then
                put getchar ..
                Input.Flush
                delay (100)
            end if
        end loop
##Status
Exported qualified.

This means that you can only call the function by calling **Input.Flush**, not by calling **Flush**.

