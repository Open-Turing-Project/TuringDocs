
#GUI.SetColor

##Syntax
**GUI.SetColor** (*widgetID* : **int**, *clrNumber* : **int**)

##Description
The **GUI.SetColor** procedure is used buttons to change thecolor of a button.  The color is specified by the *clrNumber*parameter.  The edges of the button are a darker version of the color specified by *clrNumber*, so in general you should usebrighter colors for buttons.

##Example
This program displays three buttons with different colors.

        import GUI

        procedure DoNothing
        end DoNothing

        var b1 := GUI.CreateButton (100, 100, 0, "Push Me", DoNothing)
        GUI.SetColor (b1, brightred)
        var b2 := GUI.CreateButton (100, 140, 0, "Push Me", DoNothing)
        GUI.SetColor (b2, brightgreen)
        var b3 := GUI.CreateButton (100, 180, 0, "Push Me", DoNothing)
        GUI.SetColor (b3, brightblue)

        loop
            exit when GUI.ProcessEvent
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **GUI.SetColor**, not by calling **SetColor**.
