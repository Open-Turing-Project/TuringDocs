
#Window.Set

##Syntax
**Window.Set** (_windowID_ : **int**, _setUpString_ : **string**)


##Description
The **Window.Set** procedure sets the configuration of the window specified by the _windowID_ parameter. See **View.Set** for a complete list of available options. The _setUpString_ parameter can be any combination options, separated by commas. Here is a selection of the available options.

**text:_<rows>_;_<cols>_ -** Sets the output window to **text** mode and changes the window size to be _<rows>_ rows by _<cols>_ columns in size.

**graphics:_<xsize>_;_<ysize_> -** Sets the output window to **graphics** mode and changes the window size to be _<xsize>_ pixels across and _<ysize>_ pixels in height.

**visible** | **invisible** | **popup** - Sets the screen to be visible, invisible or popup. A popup window is hidden until output is sent to that window. The main **Run** window is a popup window. If you never send any output to it, it never appears. 

**noxor** | **xor** - Sets whether all drawing operations draw using XOR.

**nocursor** | **cursor** - Sets whether the cursor is visible or not.

**noecho** | **echo** - Sets whether the input from the keyboard is echoed to the screen. 

**title:_<text>_** - Sets the window title bar to _<text>_.

**position:_<x>_;_<y>_** - Sets the position of the top left corner of the window to be (_<x>_,_<y>_). 

**offscreenonly** | **nooffscreenonly** - Sets whether output to the window goes to offscreen window alone, or both the onscreen and offscreen window.


##Status
Exported qualified.

This means that you can only call the function by calling **Window.Set**, not by calling **Set**.


##See also
**[view_set.html](View.Set)** for a complete list of the options available with **[](Window.Set)**. See **[window_open.html](Window.Open)** for how to create a [new.html](new) window.

