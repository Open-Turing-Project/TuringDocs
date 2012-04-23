
#Window.GetSelect

##Syntax
**Window.GetSelect** : **int**


##Description
The **Window.GetSelect** function returns the window ID of the selected window. If the select window is the main (default) run window, then it returns _defWinID_ (which is -1).

A selected window is defined as the window that output will be sent to. It can be invisible. When a program starts execution, the selected window is the main **Run** window.


##Status
Exported qualified.

This means that you can only call the function by calling **Window.GetSelect**, not by calling **GetSelect**.


##See also
**[window_select.html](Window.Select)**.

