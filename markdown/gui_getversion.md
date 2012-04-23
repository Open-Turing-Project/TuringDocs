
#GUI.GetVersion

##Syntax
**GUI.GetVersion** : **int**


##Description
Returns the current version of the GUI Procedure Library. Because the GUI Procedure Library is expected to grow, new versions will probably be made available at our web site **http://www.holtsoft.com/turing**. If you wish to use features that do not appear in earlier versions of the library, you can have your program check that the current available version meets the programs needs. **GUI.GetVersion** returns an integer from 100 - 999 and is read as 1.00 to 9.99.


##Example
The following program fragment immediately exits if OOT does not support version 1.1 of the GUI Procedure Library

        import GUI in "%oot/lib/GUI"
        if GUI.GetVersion < 110 then
            put "You must update to at least version 1.1 of the"
            put "GUI Procedure Library to use this program."
            return
        end if
##Details
In version 1.00 (shipped with MacOOT 1.5), **GUI.GetVersion** did not exist.


##Status
Exported qualified.

This means that you can only call the function by calling **GUI.GetVersion**, not by calling **GetVersion**.

