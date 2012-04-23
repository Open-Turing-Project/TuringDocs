
#Joystick.GetInfo

##Syntax
**Joystick.GetInfo** (_joystick_ : **int**, **var** _xPos_, _yPos_ : **int**,_btn1Pressed_, _btn2Pressed_ : **boolean**)


##Description
Reads the position and button status of the joystick specified by the _joystack_ parameter. The _x_ and _y_ parameter are returned in the _xPos_ and _yPos_ parameters. If button 1 or button 2 on the joystick are currently pressed, _btn1Pressed_ and _btn2Pressed_ will be set to **true**. The _joystick_ parameter can be either **joystick1** or **joystick2**.

The x and y positions vary from **joyMin** to **joyMax**. To use them with respect to a screen, the coordinates returned from **Joystick.GetInfo** must be translated into screen coordinates. The following formula can be used:

        screenX = round (maxx * (xPos  joyMin) / (joyMax  joyMin))
        screenY = round (maxy * (yPos  joyMin) / (joyMax  joyMin))
##Details
The **Joystick** module contains undocumented subprograms for those who need to access more than two buttons or axes on a joystick. Contact Holt Software if you need more information.


##Example
The following program outputs the current location of joystick #1 and draws a cursor on the screen to point out where it is showing.

        var jx, jy, x, y, ox, oy : int := 1
        var b1, b2, oB1, oB2 : boolean := false
        loop
            Joystick.GetInfo (joystick1, jx, jy, b1, b2)
            % Convert joystick coordinates into screen coordinates.
            x = round (maxx * (jx  joyMin) / (joyMax  joyMin))
            y = round (maxy * (jy  joyMin) / (joyMax  joyMin))
            if x not= ox or y not= oy or  b1 not= oB1 or b2 not= oB2 then
                Text.Locate (1, 1)
                put "x = ", x, "  y = ", y, "  b1 = ", b1, "  b2 = ", b2
                View.Set ("xor")
                Draw.Line (ox  10, oy, ox + 10, oy, brightred)
                Draw.Line (ox , oy  10, ox , oy + 10, brightred)
                Draw.Line (x  10, y, x + 10, y, brightred)
                Draw.Line (x, y  10, x, y + 10, brightred)
                ox := x
                oy := y
                oB1 := b1
                oB2 := b2
            end if
        end loop
##Status
Exported qualified.

This means that you can only call the function by calling **Joystick.GetInfo**, not by calling **GetInfo**.

