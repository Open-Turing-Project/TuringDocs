
#Window.Show

##Syntax
**Window.Show** (_windowID_ : **int**)


##Description
The **Window.Show** procedure makes the specified window appear if it was invisible. 

To make a window disappear after it's visible, you use **Window.Hide.**


##Details
When a window is hidden, output to it is faster. It is quite possible for the you to hide a window, do complicated drawing to it and then make it appear in order to have the program execute faster.


##Status
Exported qualified.

This means that you can only call the function by calling **Window.Show**, not by calling **Show**.


##See also
**[window_select.html](Window.Select)** and **[window_setactive.html](Window.SetActive)**.



