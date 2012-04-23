
# hasch

## Syntax
**hasch** : **boolean**

## Description
The **hasch** procedure is used to determine if there is a character that has been typed but not yet been read.


## Example
This program simulates the rolling of a pair of dice until theuser pressed the keyboard.



        put "Press any key to stop the dice rolling"
        var die1, die2 : int
        var ch : string (1)
        loop
            exit when hasch
            randint (die1, 1, 6)
            randint (die2, 1, 6)
            locate (1, 1)
            put "You rolled ", die1 + die2
        end loop
            
        getch (ch)    % Discard the character
## Details
The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in "_graphics_" mode, it will automatically be set to "_graphics_" mode.

If there is the possibility that there are already keystrokes in thekeyboard buffer, the [**Input.Flush**](input_flush.html)command can be used to flush the keyboard buffer (remove all keystrokes from the buffer) before entering the loop to check forinput.


## See also
**[getch](getch.html)** and **[getchar](getchar.html)**.

See also the [**Input.Flush**](input_flush.html)command for flushing the keyboard buffer.

See also predefined unit **[Input](inputmodule.html)**.

