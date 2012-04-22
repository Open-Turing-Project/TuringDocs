
#Window.Update

##Syntax
**Window.Update** (_windowID_ : **int**)



##Description
The **Window.Update** procedure updates a specified Run window from an offscreen bitmap. It is used with the command **View.Set**("offscreenonly") which prevents the Run window from being updated until the **Window.Update** command is given.
This command is identical to the **View.Update** command except that it updates the specified window. It should be used when doing animation with more than one window.



##See also
**[view_update.html](View.Update)** for information on flicker-free animation.



