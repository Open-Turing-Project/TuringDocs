
#View.ClipAdd

##Syntax
**View.ClipAdd** (_x1_, _y1_, _x2_, _y2_ : **int**)



##Description
The **View.ClipAdd** procedure adds another rectangle specified by (_x1_, _y1_) - (_x2_, _y2_) to the clipping region. This only works on systems that support complex clipping regions. If no clipping region has been specified, then the rectangle becomes the complete clipping region.
A clipping region is the region that the output will appear in. If the rectangle is specified as the clipping region, any drawing done outside the rectangle will not appear.
To set the initial clipping, or remove the old region and replace it with a new one, use **View.ClipSet**. To set the clipping region back to the entire screen or window, use **View.ClipOff**.
These commands only work in "_graphics_" mode.



##Example
This program sets the clipping region to five rectangles and then draws random circles. The circles will only appear (or partially appear) in the rectangles.


        const maxx13 : int := maxx div 3
        const maxx23 : int := 2 * maxx div 3
        const maxy13 : int := maxy div 3
        const maxy23 : int := 2 * maxy div 3
        View.ClipSet (0, 0, maxx13, maxy13)
        View.ClipAdd (maxx23, 0, maxx, maxx13)
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
##Status
Exported qualified.
This means that you can only call the function by calling **View.ClipAdd**, not by calling **ClipAdd**.

**See also** **View.ClipSet** and **View.ClipOff** functions.



