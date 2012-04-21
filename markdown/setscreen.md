
#setscreen

##Syntax
**setscreen** ( *s* : **string** )

##Example
Here are example uses of the **setscreen** procedure. In many cases, these will appear as the first statement of the program. They can, however,  appear any place in a program.
        setscreen ( "graphics" )            % Enter graphics mode
        setscreen ( "graphics:400;300" )    % Change window to 400x300
        setscreen ( "nocursor" )            % Turn off cursor
        setscreen ( "noecho" )          % Do not echo keys
##Description
The **setscreen** statement is used to change the mode of the screen, as well as the way in which Turing does input and output. The parameter to **setscreen** is a string, such as "graphics". The string contains one or more options separated by commas, such as "text, noecho".

##Details
Users should look at **View.Set** in order to find out the implementation specified details of **setscreen** on their systems.
There are two screen modes, **text** and **graphics**. In **text** mode, output to the window is only allowed using **put** and **get**. Attempting to use graphics or moving the cursor using **locate** will result in an error. However, a window in **text** mode will keep all text output sent to it. Any output that scrolls off the edge of the window can be read by adjusting the scroll bars of the window. Printing a **text** output window prints all the output sent to the window, not just the output currently visible in the window. Programs often use **text** mode when they are displaying large amounts of text data that the user may wish to view or print later. Saving the contents of a **text** output window creates a text file containing all the output sent to the window.
In **graphics** mode, a program can use both **put** and **get**, **locate** and graphics commands to send output to the window. However, any output that scrolls off the window is lost. Printing the window outputs the current contents of the window. Saving a **graphics** output window saves the current contents of the window as a BMP file.
Where the options to **setscreen** are mutually exclusive, they are listed here with the default underlined. Here are the options:
"**graphics**", "**text**",  Sets the mode of the window to the given mode. A size can for the window can be specified at the same time. If the window mode or size changes, then the window will be cleared.
To specify the size of a window in **graphics** mode, the **graphics** can have a modifier in the form "graphics:<*width*>;<*height*>". This sets the window to be <*width*> pixels by <*height*> pixels in size. The maximum size of a window is the size of the screen.
To specify the size of a window in **text** mode, the **text** can have a modifier in the form "text:<*rows*>;<*columns*>". This sets the window to be <*rows*> text lines in height by <*columns*> characters in width. The maximum size of a window is the size of the screen.
To set a window to the maximum size available on the screen, you can use "max" for the <*width*>, <*height*>, <*rows*> or <*columns*> parameters.
"**cursor**", "**nocursor**"  Causes the cursor to be shown (or hidden). The cursor only appears when the program is waiting for keyboard input from the user.
"**echo**", "**noecho**"  Causes (or suppresses) echoing of characters that are typed. Echoing is commonly turned off in interactive programs to keep typed characters from being echoed at inappropriate places on the screen.
"**nooffscreenonly**", "**offscreenonly**"  Causes or (suppresses) output from being sent to the visible window. When the **offscreenonly** option is active, any text and graphics output is drawn to the offscreen buffer that is maintained for every Run window but not drawn to the screen. **View.Update** is then used to copy the entire contents of the offscreen buffer to the Run window. By allowing numerous drawing commands to be sent to the offscreen buffer and then updating the window at one time, it is possible to get smoother animation.
"**msdos**", "**nomsdos**"  Causes the window to use theMS-DOS character set (with line drawing characters) instead of theWindows ANSI character set.  The "**nomsdos**" option causes thewindow to use the Windows ANSI character set.  Note that the "**msdos**" option only works if the Windows font (usually Courier New) supports it.
"**buttonbar**", "**nobuttonbar**"  Causes or (suppresses) the display of a button bar at the top of the output window which allows the user to easily stop program execution or save and print the output window.

##Example
This program creates a graphics window that is 300 pixels by 100 pixels.

##See also
the **[drawmodule.html](Draw)** module, the **draw** subprograms and the **[view_update.html](View.Update)** procedure for doing smooth animation. See also **[view_set.html](View.Set)** for further setscreen options including positioning the output window on the screen.
