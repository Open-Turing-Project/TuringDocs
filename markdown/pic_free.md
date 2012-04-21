
#

##Syntax
**Pic.Free** (*picID* : **int**)



##Description
**Pic.Free **is used to release the memory allocated by **Pic.New**. It frees up the memory allocated to the parameter *picID*. This means that *picID* can not be used in a **Draw.Pic** or **Draw.Save** procedure after **Pic.Free** is called.
Turing has a limited number of pictures that are available at anyone time (approximately 1,000). A program that continuously allocates pictures (using **Pic.New** or **Pic.FileNew**) will eventually fail if it does not free the pictures using **Pic.Free**. As well,if a program allocates hundreds of pictures and does notfree any of them, the memory devoted to the pictures will not be freed and eventually the program may exhaust the memory on the machine.



##Details
If **Pic.Free** is passed an invalid picture ID, a fatal error occurs. If the **Pic.Free** call fails for other (non-fatal) reasons, **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.



##Example
The program animates a picture moving across a background.  Eachtime the picture is about to move to a new location, a picture ofthe background at that location is taken. When the picture is to bemoved to the next location, the background picture is drawn over topof the picture, thus "erasing" it. The **Pic.Free** command frees up each background picture once it is no longer in use. Without it,the program would use up all the picture identifiers and crash afterone or two moves across the window.
The animation in the example flickers slightly. See [view_update.html](View.Update) for information on how to produce flicker-free animation.


        var picID, bgID : int
        var x, y, c, direction : int

        % Create the picture being moved
        Draw.FillBox (50, 50, 150, 150, brightred)
        Draw.FillStar (50, 50, 150, 150, brightgreen)
        Draw.FillOval (100, 100, 30, 30, brightblue)
        picID := Pic.New (50, 50, 150, 150)

        % Create a background
        for i : 1 .. 1000
            x := Rand.Int (0, maxx)
            y := Rand.Int (0, maxy)
            c := Rand.Int (9, 15)    % Use bright colors
            Draw.FillBox (x, y, x + 30, y + 30, c)
        end for

        x := 1
        y := 100
        direction := 1
        % Main loop
        loop
            % Take a picture of the background 
            bgID := Pic.New (x, y, x + 100, y + 100)
            Pic.Draw (picID, x, y, picCopy)     % Draw the picture
            delay (20)                          % Delay 20 milliseconds
            Pic.Draw (bgID, x, y, picCopy)      % Draw the background over the picture
            Pic.Free (bgID)                     % Free the background
            if x <= 0 or (x + 100) >= maxx then
                direction := -direction
            end if
            x += direction
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **Pic.Free**, not by calling **Free**.


