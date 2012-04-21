
#Window.Hide

##Syntax
**Window.Hide** (*windowID* : **int**)

##Description
The **Window.Hide** procedure hides the specified window. This means it disappears from the user's screen. However, it is still possible to select and draw the window while it remains hidden. If the user activates it (using **Window.GetActive**) it will automatically appear.
To make a window appear after it's hidden, you use **Window.Show.**

##Details
When a window is hidden, output to it is faster. It is quite possible for the you to hide a window, do complicated drawing to it and then make it appear in order to have the program execute faster.

##Status
Exported qualified.
This means that you can only call the function by calling **Window.Hide**, not by calling **Hide**.

##See also
**[window_select.html](Window.Select)** and **[window_setactive.html](Window.SetActive)**.
