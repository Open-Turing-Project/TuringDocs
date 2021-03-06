
# locatexy

## Syntax
**locatexy** ( _x_ , _y_ : **int** )

## Description
The **locatexy** procedure is used to move the cursor so that the next output from **put** will be at approximately (_x_, _y_). The exact location may be somewhat to the left of _x_ and below _y_ to force alignment to a character boundary.


## Example
This program outputs "Hello" starting at approximately (100, 50) on the screen.

        setscreen ("graphics")
        locatexy ( 100, 50 )
        put "Hello"
## Details
The **locatexy** procedure is used to locate the next output based on x and y positions, where the position x=0, y=0 is the left bottom of the screen. See also the **locate** procedure which is used to locate the output-based row and column positions, where row 1 is the top row and column 1 is the left column.

The screen should be in a "_graphics_" mode. See the **setscreen** procedure for details. If the screen is not in a "_graphics_" mode, it will automatically be set to "_graphics_" mode.


## See also
**[setscreen](setscreen.html)** and **[drawdot](drawdot.html)**.

See also predefined unit **[Text](textmodule.html)**.

