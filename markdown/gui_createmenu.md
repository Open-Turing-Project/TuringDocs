
#GUI.CreateMenu

##Syntax
**GUI.CreateMenu** (_name_ : **string**) : **int**



##Description
Creates a menu and returns the menu's widget ID. The menu will be added after the other menus in the menu bar. If there are no previous menus, then a menu bar is automatically created and the menu added.
The _name_ parameter specifies the text that appears in the menu bar.

Menus are used in most modern interfaces. In order to create a full set of menus, you must create the menu and then create the menu items in that menu. The menus are automatically added to the menu bar of the selected menu.
As of the v1.0 release of the GUI Library, it is an error to create a menu item without having created a menu first. In future releases it will be possible to create menus and attach and remove them from menu bars when desired.

![Doc image](gui_createmenu01.gif)


##Example
The following program creates a series of menus with menu items in them. It then disables the second menu.



        import GUI in "%oot/lib/GUI"
        
        View.Set ("graphics:250;150,nobuttonbar")
        var first, second : int     % The menus.
        var item : array 1 .. 12 of int % The menu items.
        var name : array 1 .. 12 of string (20) := 
            init ("Quit", "---", "A", "B", "---", "C", "D", 
            "Disable B Menu Item", "Enable B Menu Item", "---", 
            "Disable Second Menu", "Enable Second Menu")
        
        procedure MenuSelected
            for i : 1 .. 12
                if item (i) = GUI.GetEventWidgetID then
                    Text.Locate (maxrow, 1)
                    put name (i) + " selected               " ..
                end if
            end for
        end MenuSelected
        
        procedure DisableB
            GUI.Disable (item (4))
        end DisableB
        
        procedure EnableB
            GUI.Enable (item (4))
        end EnableB
        
        procedure DisableFirst
            GUI.Disable (first)
        end DisableFirst
        
        procedure EnableFirst
            GUI.Enable (first)
        end EnableFirst
        
        % Create the menus
        first := GUI.CreateMenu ("First")
        item (1) := GUI.CreateMenuItem (name (1), GUI.Quit)
        for cnt : 2 .. 7
            item (cnt) := GUI.CreateMenuItem (name (cnt), 
                MenuSelected)
        end for
        
        second := GUI.CreateMenu ("Second")
        item (8) := GUI.CreateMenuItem (name (8), DisableB)
        item (9) := GUI.CreateMenuItem (name (9), EnableB)
        item (10) := GUI.CreateMenuItem (name (10), MenuSelected)
        item (11) := GUI.CreateMenuItem (name (11), DisableFirst)
        item (12) := GUI.CreateMenuItem (name (12), EnableFirst)
        
        loop
            exit when GUI.ProcessEvent
        end loop
##Details
When a menu is not enabled, the text in the menu bar is grayed out and clicking on the menu does not cause the menu to appear.



##Details
The following GUI subprograms can be called with a menu as the _widgetID_ parameter:
**GUI.Show**,** GUI.Hide**,** GUI.Dispose**,** GUI.Enable**,** GUI.Disable**



##Status
Exported qualified.
This means that you can only call the function by calling **GUI.CreateMenu**, not by calling **CreateMenu**.



##See also
**[gui_createmenuitem_full-2.html](GUI.CreateMenuItem)** for adding items to a menu. See also **[gui_showmenubar.html](GUI.ShowMenuBar)** and **[gui_hidemenubar.html](GUI.HideMenuBar)** for showing and hiding the menu bar.


