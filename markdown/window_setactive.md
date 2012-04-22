
#Window.SetActive

##Syntax
**Window.SetActive** (_windowID_ : **int**)



##Description
The **Window.SetActive** procedure activates the window specified by the _windowID_ parameter.
An active window is defined as the window that has the input focus. This means that any typing will be sent to the active window. Under most systems an active window is indicated by a change in the appearance of the window.



##Details
In general, it is unwise to change the active window. If the user is working on another program at the same time the program is running and the program executes the **Window.SetActive** procedure, she or he will suddenly be returned to OOT without warning.



##Status
Exported qualified.
This means that you can only call the function by calling **Window.SetActive**, not by calling **SetActive**.



##See also
**[window_getactive.html](Window.GetActive)** and **[window_select.html](Window.Select).**


