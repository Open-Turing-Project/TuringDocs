
#GUI.SelectRadio

##Syntax
**GUI.SelectRadio** (*widgetID* : **int**)

##Description
Selects a radio button specified by *widgetID*. The previously-selected radio button is "de-selected". The *action procedure* of the radio button is called.

##Example
The following program creates siz radio buttons. Selecting one of the buttons cause the bottom two radio buttons to become selected.
        import GUI in "%oot/lib/GUI" 
        View.Set ("graphics:350;110") 
        
        var radio : array 1 .. 6 of int     % The radio button IDs.
        
        procedure RadioPressed
            Text.Locate (1, 1)
            for i : 1 .. 6
                if radio (i) = GUI.GetEventWidgetID then
                    put "Radio Button " , i, " Selected"
                end if
            end for
        end RadioPressed
        
        procedure Select
            GUI.SelectRadio (radio (3))
            GUI.SelectRadio (radio (6))
        end Select
        
        radio (1) := GUI.CreateRadioButton (15, maxy  35, 
            "Radio Button 1", 0, RadioPressed)
        radio (2) := GUI.CreateRadioButton ( 1, 1, "Radio Button 2", 
            radio (1), RadioPressed)
        radio (3) := GUI.CreateRadioButton ( 1, 1, "Radio Button 3",
            radio (2), RadioPressed)
        radio (4) := GUI.CreateRadioButtonFull (maxx  15, maxy  35,
            "Radio Button 4", 0, RadioPressed, GUI.RIGHT, GUI.NONE)
        radio (5) := GUI.CreateRadioButtonFull ( 1, 1, "Radio Button 5", 
            radio (4), RadioPressed, GUI.RIGHT, GUI.NONE)
        radio (6) := GUI.CreateRadioButtonFull ( 1, 1, "Radio Button 6",
            radio (5), RadioPressed, GUI.RIGHT, GUI.NONE)
        
        var selectButton : int := GUI.CreateButton (15, 10, 100, 
            "Select Bottom Buttons", Select)
        var quitButton : int := GUI.CreateButton (maxx  15  100, 10, 100,  
            "Quit", GUI.Quit)loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the procedures by calling **GUI.SelectRadio**, not by calling **SelectRadio**.

##See also
**GUI.CreateRadioButton** and **GUI.CreatePictureRadioButton**.
