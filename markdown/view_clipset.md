
# View.ClipSet

## Syntax
**View.ClipSet** (_x1_, _y1_, _x2_, _y2_ : **int**)

## Description
The **View.ClipSet** procedure sets the clipping region to the rectangle specified by (_x1_, _y1_) - (_x2_, _y2_). If a clipping region already exist, it is replaced by the specified rectangle.

A clipping region is the region in which the output will appear. If the rectangle is specified as the clipping region, any drawing done outside the rectangle will not appear.

To set the initial clipping, or remove the old region and replace it with a new one, use **View.ClipSet**. To set the clipping region back to the entire screen or window, use **View.ClipOff**.

These commands only work in "_graphics_" mode.


## Example
This program sets the clipping region to five rectangles and then draws random circles. The circles will only appear (or partially appear) in the rectangles.

        const maxx13 : int := maxx div 3
        const maxx23 : int := 2 * maxx div 3
        const maxy13 : int := maxy div 3
        const maxy23 : int := 2 * maxy div 3
        View.ClipSet (0, 0, maxx13, maxy13)
        View.ClipAdd (maxx23, 0, maxx, maxy13)
        View.ClipAdd (maxx13, maxy13, maxx23, maxy23)
        View.ClipAdd (0, maxy23, maxx13, maxy)
        View.ClipAdd (maxx23, maxy23, maxx, maxy)
        
        % Draw the random ovals in the box
        var x, y, clr : int
        loop
            x := Rand.Int (0, maxx)     % Random x
            y := Rand.Int (0, maxy)     % Random y
            clr := Rand.Int (0, maxcolor)   % Random color
            Draw.FillOval (x, y, 30, 30, clr)
        end loop
## Status
Exported qualified.

This means that you can only call the function by calling **View.ClipSet**, not by calling **ClipSet**.


## See also
**[View.ClipAdd](view_clipadd.html)** and **[View.ClipOff](view_clipoff.html)** functions.

