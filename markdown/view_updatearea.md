
#View.UpdateArea

##Syntax
**View.UpdateArea** (_x1_, _y1_, _x2_, _y2_)


##Description
The **View.UpdateArea** procedure updates a rectanglular area Run window, specified by (_x1_, _y1_) - (_x2_, _y2_) from the offscreen bitmap. It is used with the command **View.Set** ("offscreenonly") which prevents the Run window from being updated until the **View.UpdateArea** or **View.Update** command is given.

Because the entire screen is not updated each time, the animation canbe much faster, especially on slow machines.  This procedure does take more effort to use than **View.Update** as it requires the programmer to calculate which portion of the screen must be updated.

##Example
This program moves a star back and forth across the screen. Tocompare the speed up **View.UpdateArea** with **View.Update**,replace the calls to **View.UpdateArea** with **View.Update**.

        View.Set ("offscreenonly")
        var SIZE : int := 50
        loop
            for x : 0 .. maxx - SIZE
                Draw.FillStar (x, 100, x + SIZE, 100 + SIZE, brightgreen)
                View.UpdateArea (x - 1, 100, x + SIZE, 100 + SIZE)
                Draw.FillStar (x, 100, x + SIZE, 100 + SIZE, colorbg)
            end for
            for decreasing x : maxx - SIZE .. 0
                Draw.FillStar (x, 100, x + SIZE, 100 + SIZE, brightgreen)
                View.UpdateArea (x, 100, x + SIZE + 1, 100 + SIZE)
                Draw.FillStar (x, 100, x + SIZE, 100 + SIZE, colorbg)
            end for
        end loop
##Details
If the entire screen is being updated each time through the animationloop (for example if the background image is changing), then use**View.Update** instead.

When using **View.UpdateArea**, it is important to correctly calculate the region to be updated. This region must not only containthe item being drawn, but also any area where the background shouldbe replaced. For example, in the program above, the area updated included the one pixel to the left of the star when the star wasmoving right-ward and one pixel to the right of the star when the starwas moving left-ward.


##Execute
Here is an example program that allows you to compare the speed ofanimation using **View.Update** with **View.UpdateArea**. Theprogram animates an object on a background of stars. Pressing any keyswitches between the two calls.




##Details
All Turing Run windows have both an onscreen visible window and an offscreen window. Whenever any output is sent to the screen, both the onscreen window and the offscreen window are updated. When the Run window needs to be updated (for example when another window is moved over top of it and then removed), Turing copies the offscreen window onto the onscreen window.

When the **View.Set** ("offscreenonly") command is given, Turing no longer draws to the onscreen window when any drawing command is given. However, it does update the offscreen window. When the **View.Update** command is given, the entire offscreen window is copied to the onscreen window.

This can be used to provide smooth, flicker-free animation. Animated objects flicker when the object being animated disappears from the onscreen window for a period of time. By using **View.Set** ("offscreenonly") / **View.Update**, the onscreen window is never blank. Instead, the offscreen window drawn over top off the on screen window, replacing it. This means that the on-screenwindow is never blanked out, eliminating the flickering found in the animation.


##Details
It's very easy to forget that no output will appear in the Run window when using **View.UpdateArea**. Remember to use **View.Set**("nooffscreenonly") to turn off this feature sending output for debugging purposes.


##Details
**View.UpdateArea** should not be used in conjunction with the **Sprite** module. Sprites can be considered a limited version of this technique. **View.UpdateArea** also works well when the entire background is changing.


##Status
Exported qualified.

This means that you can only call the function by calling **View.UpdateArea**, not by calling **UpdateArea**.


##See also
**[view_set.html](View.Set)** for the "offscreenonly" and "nooffscreenonly" options. 

**[view_update.html](View.Update)** for procedure toupdate the entire screen at one time.

