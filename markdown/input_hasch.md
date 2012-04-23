
# Input.hasch

## Syntax
**hasch** : **boolean**

## Description
The **hasch** procedure is used to determine if there is a character that has been typed but not yet been read.


## Example
The _flush_ procedure gets rid of any characters that have been typed but not yet read.

        procedure flush
            var ch : string ( 1 )
            loop
                exit when not hasch
                getch ( ch )    % Discard this character
            end loop
        end flush
## Details
The screen should be in a "_screen_" or "_graphics_" mode. See the **View.Set** procedure for details. If the screen is not in one of these modes, it will automatically be set to "_screen_" mode.


## Status
Exported unqualified.

This means that you can call the function by calling **hasch** or by calling **Input.hasch**.


## See also
**[getch](getch.html)** and **[getchar](getchar.html)**.

