
# color

## Syntax
**color** (_Color_ : **int**)

## Description
The **color** procedure is used to change the currently active color. This is the color of characters that are to be **put** on the screen. The alternate spelling is **colour**.


## Example
This program prints out the message "Bravo" three times, each in a different color.

        setscreen ("graphics")
        for i : 1 .. 3
            color (i)
            put "Bravo"
        end for
## Example
This program prints out a message. The color of each letter is different from the preceding letter. For letter number _i_ the color number is _i_ mod maxcolor + 1. This cycles repeatedly through all the available colors.

        setscreen ("graphics")
        const message := "Happy New Year!!"
        for i : 1 .. length (message)
            color (i  mod maxcolor + 1)
            put message (i) ..
        end for
## Details
See **maxcolor** for the number of colors available in the various "_graphics_" modes. The background color that text appears upon can be set using the **colorback** procedure.

The screen must be in a "_graphics_" mode to use the **color** procedure. See **setscreen** for details.


## See also
**[colorback](colorback.html)**, **[whatcolor](whatcolor.html)** and **[maxcolor](maxcolor.html)**.

See also predefined unit **[Text](textmodule.html)**.

