
#Window.Set

##Syntax
**Window.Set** (*windowID* : **int**, *setUpString* : **string**)

##Description
The **Window.Set** procedure sets the configuration of the window specified by the *windowID* parameter. See **View.Set** for a complete list of available options. The *setUpString* parameter can be any combination options, separated by commas. Here is a selection of the available options.
**text:*<rows>*;*<cols>* - **Sets the output window to **text** mode and changes the window size to be *<rows>* rows by *<cols>* columns in size.
**graphics:*<xsize>*;*<ysize*> - **Sets the output window to **graphics** mode and changes the window size to be *<xsize>* pixels across and *<ysize>* pixels in height.
**visible** | **invisible** | **popup** - Sets the screen to be visible, invisible or popup. A popup window is hidden until output is sent to that window. The main **Run** window is a popup window. If you never send any output to it, it never appears. 
**noxor** |** xor** - Sets whether all drawing operations draw using XOR.
**nocursor **|** cursor** - Sets whether the cursor is visible or not.
**noecho **|** echo** - Sets whether the input from the keyboard is echoed to the screen. 
**title:*<text>*** - Sets the window title bar to *<text>*.
**position:*<x>*;*<y>*** - Sets the position of the top left corner of the window to be (*<x>*,*<y>*). 
**offscreenonly **|** nooffscreenonly** - Sets whether output to the window goes to offscreen window alone, or both the onscreen and offscreen window.

##Status
Exported qualified.
This means that you can only call the function by calling **Window.Set**, not by calling **Set**.

##See also
**[view_set.html](View.Set)** for a complete list of the options available with** [](Window.Set)**. See **[window_open.html](Window.Open)** for how to create a [new.html](new) window.
