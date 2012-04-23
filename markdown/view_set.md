
# View.Set

## Syntax
**View.Set** ( _s_ : **string** )

## Example
Here are example uses of the **View.Set** procedure. In many cases, these will appear as the first statement of the program. However, they can appear any place in a program.

        View.Set ("graphics")       % Switch to graphics mode
        View.Set ("screen")     % Switch to screen mode
        View.Set ("nocursor")       % Turn off cursor
        View.Set ("noecho")     % Do not echo keystrokes
## Description
The **View.Set** statement is used to change the mode of the screen, as well as the way in which Turing does input and output. The parameter to **View.Set** is a string, such as "graphics". The string contains one or more options separated by commas, such as "text, noecho". **View.Set** affects the active window.


## Details
There are two window modes, **text** and **graphics**.

**text** mode does not allow any graphics whatsoever (including cursor positioning, etc.). Only **put** and **get** are allowed. Any output that scrolls off the top of the window is preserved and can viewed or printed later.

**graphics** mode allows character graphics and pixel graphics commands such and **Text.Locate** and **Draw.Box**.

The default graphics mode is defined in the Turing preferences. It is good practice to set the desired mode so that the program will function properly regardless of thedefault graphics mode. Note that if the user prints the output window, in **text** mode, all output sent to the window is printed. In **graphics** mode, only the current output of the window is printed. If the user saves the output window, a **text** mode window will produce a text file containing all the output sent to the window. A **graphics** window will produce a BMP graphics file containing the current contents of the window.


## Details
Where the options to **View.Set** are mutually exclusive, they are listed here with the default underlined. Here are the options: 

"**cursor**", "**nocursor**" - Causes the cursor to be shown (or hidden). The cursor is only displayed when the program is awaiting input.

"**echo**", "**noecho**" - Causes (or suppresses) echoing of characters that are typed. Echoing is commonly turned off in interactive programs to keep typed characters from being echoed at inappropriate places on the screen.

"**noxor**", "**xor**" - **noxor** mode means that all drawing is done normally. In **xor** mode, all pixel graphics are drawn XOR'ed on the background (with the exception of the **Pic** routines, where the drawing mode is specified). The most important property of an XOR'ed object is that it can be erased and the background restored by XOR'ing the object on top of itself.

"**msdos**", "**nomsdos**" - Causes the window to use theMS-DOS character set (with line drawing characters) instead of theWindows ANSI character set.  The "**nomsdos**" option causes thewindow to use the Windows ANSI character set.  Note that the "**msdos**" option only works if the Windows font (usually Courier New) supports it.

"**visible**", "**invisible**", "**popup**" - Causes the active window to become visible (invisible or, for popup, invisible until input or output occurs in the window). 

"**title:<_text_>**" - Causes the title of the active window to be set to **<_text_>**. 

"**position:<_x_>;<_y_>**" - Causes the position of the upper left corner of the active window to be set to (_**x**_, _**y**_). The <x> parameter can also be one of: &#147;left&#148;, &#147;center&#148;, &#147;center&#148; or &#147;right&#148;, in which case the window will be placed on the left, center or right side of the screen. The <y> parameter can also be one of: &#147;top&#148;, &#147;middle&#148;, &#147;truemiddle&#148;, or &#147;bottom&#148; in which case the window will be placed at the top, middle about 1/3 from the top, middle or bottom of the screen. Note that when a window is supposed to be centered in the middle of the screen, &#147;middle&#148; usually looks better than &#147;truemiddle&#148;.

"**nooffscreenonly**", "**offscreenonly**"  Causes or (suppresses) output from being sent to the visible window. When the **offscreenonly** option is active, any text and graphics output is drawn to the offscreen buffer that is maintained for every Run window but not drawn to the screen. **View.Update** is then used to copy the entire contents of the offscreen buffer to the Run window. By allowing numerous drawing commands to be sent to the offscreen buffer and then updating the window at one time, it is possible to get smoother animation.

"**buttonbar**", "**nobuttonbar**"  Causes or (suppresses) the display of a button bar at the top of the output window which allows the user to easily stop program execution or save and print the output window.

"**text**", "**screen**", "**graphics**" **-** Sets window to the given mode and always erases the screen, even when already in the requested mode.

The **text** mode can have a modifier in the form "text:<_rows_>;<_cols_>". This sets the window to be <_rows_> by <_cols_> of text in size. 

The **screen** mode actually sets the window to **graphics** mode. It can have a modifier in the form "screen:<_rows_>;<_cols_>". This sets the window to be <_rows_> by <_cols_> of text in size. 

The **graphics** mode can have a modifier in the form "graphics:<_width_>;<_height_>". This sets the window to be <_width_> by <_height_> pixels in size.

To set a window to the maximum size available on the screen, you can use &#147;max&#148; for the <_width_>, <_height_>, <_rows_> or <_columns_> parameters. If the window requested is larger than will fit on the screen, the window will fill the entire screen and scroll bars will be added to the output window to allow the window user to see the rest of the window.


## Example
This program creates a graphics window that is 300 pixels by 100 pixels.

This program outputs the square roots for the first 200 numbers. The user can inspect all the output and print the values after the program has finished execution

This program creates a window without a button bar at the top that is sized to fit the screen. It then draws an &#147;X&#148; in red in the window.

This program resizes the window to 200x200, moves the output window to the bottom-left of the screen and hides the button bar. It then sets the window title to &#147;Bottom Left Window&#148; and outputs the word &#147;Hello&#148;.

        View.Set ("graphics:300;100")        View.Set ("text")
        for value : 1 .. 200
            put value : 3, "   ", sqrt (value)
        end for        View.Set ("graphics:max;max,nobuttonbar")
        Draw.Line (0, 0, maxx, maxy, red)
        Draw.Line (maxx, 0, 0, maxy, red)        View.Set ("graphics:200;200,position:bottom;left,nobuttonbar")
        View.Set ("title:Bottom Left Window")
        put "Hello"
## See also
**[setscreen](setscreen.html)** for further information. 


## Status
Exported qualified.

This means that you can only call the function by calling **View.Set**, not by calling **Set**.

