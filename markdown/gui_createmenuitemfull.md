
#GUI.CreateMenuItem[Full]

##Syntax
**GUI.CreateMenuItem** (*name* : **string**,     *actionProc* : **procedure** *x* ()) : **int**
**GUI.CreateMenuItemFull** (*name* : **string**,     *actionProc* : **procedure** *x* (), *shortCut* : **char**, *addNow* : **boolean**) : **int**

##Description
Creates a menu item and returns the menu item's widget ID. 
Menu items are the individual entries of a menu. To create menus for a window, you must create a menu, then create the menu items for that menu, then create the next menu, etc. All menu items are automatically added to the last menu and after the last menu item of the currently selected (not active!) window.
The menu item will be added to the last menu after the other menu items in the menu. If there are no menus defined, an error results.
The *name* parameter specifies the text that is to appear. A *name* of three dashes ("---") creates a separator across the menu. The *actionProc* parameter specifies the name of a procedure to be called when user the selects the menu item from the menu.
For **GUI.CreateMenuItemFull**, the *shortCut* parameter specifies the keystroke to be used as the menu item's shortcut. If no shortcut is desired, then '\0' can be used. The *addNow* parameter has no effect in the current version of the GUI Library. In future versions, it will allow you to create menu items that can then be added to a menu later in the program.

##Examples
See the example for **[gui_createmenu.html](GUI.CreateMenu)**.

##Details
When a menu item is not enabled, the text of the menu item is grayed out and clicking on the menu item does not cause the menu to appear.

##Details
The following GUI subprograms can be called with a menu as the *widgetID* parameter:
 **GUI.Show**, **GUI.Hide**, **GUI.Dispose**,**GUI.Enable**, **GUI.Disable**

##Status
Exported qualified.
This means that you can only call the function by calling **GUI.CreateMenuItem**, not by calling **CreateMenuItem**.
