
#View.Update

##Syntax
**View.Update**



##Description
The **View.Update** procedure updates a Run window from an offscreen bitmap. It is used with the command **View.Set** ("offscreenonly") which prevents the Run window from being updated until the **View.Update** command is given.



##Example
This program displays 30 circles bouncing around the screen. To seethe effect without **View.Update**, comment out the line**View.Set** ("offscreenonly")


        % Place some circles around the screen
        const RADIUS : int := 30
        const NUM_BALLS : int := 20
        var x, y, dx, dy, clr : array 1 .. NUM_BALLS of int
        for i : 1 .. NUM_BALLS
            x (i) := Rand.Int (RADIUS, maxx - RADIUS)
            y (i) := Rand.Int (RADIUS, maxy - RADIUS)
            dx (i) := Rand.Int (-3, 3)
            dy (i) := Rand.Int (-3, 3)
            clr (i) := Rand.Int (1, 15)
        end for
        
        % Now, any drawing to the screen won't appear until a 
        % View.Update is given.
        View.Set ("offscreenonly")
        loop
            cls % Clear the offscreen window
            for i : 1 .. NUM_BALLS
                if x (i) + dx (i) < RADIUS or 
                        x (i) + dx (i) > maxx - RADIUS then
                    dx (i) := -dx (i)
                end if
                if y (i) + dy (i) < RADIUS or 
                        y (i) + dy (i) > maxy - RADIUS then
                    dy (i) := -dy (i)
                end if
                x (i) := x (i) + dx (i)
                y (i) := y (i) + dy (i)
                Draw.FillOval (x (i), y (i), RADIUS, RADIUS, clr (i))
            end for
            % All the circles have been drawn.  Now update the screen.
            View.Update
            Time.Delay (5)
        end loop
##Details
All Turing Run windows have both an onscreen visible window and an offscreen window. Whenever any output is sent to the screen, both the onscreen window and the offscreen window are updated. When the Run window needs to be updated (for example when another window is moved over top of it and then removed), Turing copies the offscreen window onto the onscreen window.
When the **View.Set** ("offscreenonly") command is given, Turing no longer draws to the onscreen window when any drawing command is given. However, it does update the offscreen window. When the **View.Update** command is given, the entire offscreen window is copied to the onscreen window.
This can be used to provide smooth, flicker-free animation. Animated objects flicker when the object being animated disappears from the onscreen window for a period of time. By using **View.Set** ("offscreenonly") / **View.Update**, the onscreen window is never blank. Instead, the offscreen window drawn over top off the on screen window, replacing it. This means that the on-screenwindow is never blanked out, eliminating the flickering found in the animation.



##Details
It's very easy to forget that no output will appear in the Run window when using **View.Update**. Remember to use **View.Set**("nooffscreenonly") to turn off this feature sending output for debugging purposes.



##Details
**View.Update** should not be used in conjunction with the **Sprite **module. Sprites can be considered a limited version of this technique. **View.Update** also works well when the entire background is changing.



##Status
Exported qualified.
This means that you can only call the function by calling **View.Update**, not by calling **Update**.



##See also
**[view_set.html](View.Set)** for the "offscreenonly" and "nooffscreenonly" options.
**[view_updatearea.html](View.UpdateArea)** for updatingpart of the window at a time.


