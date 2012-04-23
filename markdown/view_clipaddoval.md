
#View.ClipAddOval

##Syntax
**View.ClipAddOval** (_x_, _y_, _xradius_, _yradius_ : **int**)


##Description
The **View.ClipAddOval** procedure adds another oval specified by (_x_, _y_) and _xradius_ and _yradius_) to the clipping region. If no clipping region has been specified, then the oval becomes the complete clipping region.

A clipping region is the region that the output will appear in. If the rectangle is specified as the clipping region, any drawing done outside the oval will not appear.

To set the initial clipping, or remove the old region and replace it with a new rectangle, use **View.ClipSet**. To set the clipping region back to the entire screen or window, use **View.ClipOff**.

These commands only work in "_graphics_" mode.


##Example
This program sets the clipping region to five circles and then draws random squares. The squares will only appear (or partially appear) in the ovals.

        const c1 : int := maxy div 4
        const c2 : int := 3* maxy div 4
        const radius : int := maxy div 4
        View.ClipAddOval (c1, c1, radius, radius)
        View.ClipAddOval (c1, c2, radius, radius)
        View.ClipAddOval (c2, c1, radius, radius)
        View.ClipAddOval (c2, c2, radius, radius)

        % Draw the random squares in the box
        var x, y, clr : int
        loop
            x := Rand.Int (0, maxx - 30)     % Random x
            y := Rand.Int (0, maxy - 30)     % Random y
            clr := Rand.Int (0, maxcolor)    % Random color
            Draw.FillBox (x, y, x + 30, y + 30, clr)
        end loop
##Execute



##Execute
By combining animation using **View.Update** and **View.ClipAddOval**, you can achieve a moving spotlight effect.




##Status
Exported qualified.

This means that you can only call the function by calling **View.ClipAddOval**, not by calling **ClipAddOval**.


##See also
[view_clipset-2.html](**View.ClipSet**), [view_clipadd-2.html](**View.ClipAdd**) and [view_clipoff-2.html](**View.ClipOff**) functions.
