
# colorback

## Syntax
**colorback** (_Color_ : **int**)

## Description
The **colorback** procedure is used to change the color upon which text appears. The alternate spelling is **colourback**.


## Example
When the message "Greetings" is output, the background surrounding each letter will be inred.

        setscreen ("graphics")
        colorback (red)
        put "Greetings" ..
## Details
When a newline is output, such as when the **put** statement does not contain a .. at the end, the rest of the line is cleared from cursor to the right edge of the output window in the text background color.


## Example
This program will result in the word "Hello" being displayed in red on a green background followed by the word "Again" displayed in red on a yellow background. The yellow background stretches across the window.

        setscreen ("graphics")
        color (red)
        colorback (green)
        put "Hello " .. % The ".." at the end of line stops the newline
        colorback (yellow)
        put "Again" % The rest of the line is cleared in yellow
## Example
This program displays the letter 'X' in 16 different colors on 16 different backgrounds. Note that the letter is not visible when the text color and the bacground color are the same

        setscreen ("graphics")
        for row : 0 .. 15
            colorback (row)
            for column : 0 .. 15
                color (column)
                locate (row, column)
                put "X" ..
            end for
        end for
## Details
See **maxcolor** for the number of background colors available . The color in which text appears can be set using the **color** procedure.

The screen must be in a "_graphics_" mode to use the **color** procedure. See **setscreen** for details.


## See also
**[color](color.html)** and **[whatcolorback](whatcolorback.html)**.

See also predefined unit **[Text](textmodule.html)**.

