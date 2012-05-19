
# Pic.Blur

## Syntax
**Pic.Blur** (_picID_, _blurAmount_ : **int**) : **int**

## Description
**Pic.Blur** is used to create a new picture by blurring anexisting picture. The resulting picture is created by mixing pixelsin a picture with pixels adjacent to it.  As the _blurAmount_increases, the image grows more and more blurry.


## Details
Note that the blurred picture is a newly created picture. When it is no longer needed, its memory should be released by using **Pic.Free**.

Note that this is a fairly CPU intensive routine.  On slow machines, it can take up to a second or more when _blurAmount_ is large.  In such cases, it is better to precompute the pictures before starting the program.  The second example shows this being done.


## Example
The program creates a picture and then progressively blurs it.  


![Doc Image](pic_blur01.gif)

**Output at start**



![Doc Image](pic_blur02.gif)

**After several loops**


        View.Set ("graphics:270;120,nobuttonbar")
        % Create the original picture
        var f := Font.New ("serif:60:bold,italic,noantialias")
	Font.Draw ("Turing", 10, 30, f, red)
        Draw.FillStar (70, 80, 90, 100, brightgreen)
        Draw.FillBox (240, 5, 270, 35, brightblue)

        var oldPic : int
        oldPic := Pic.New (0, 0, maxx, maxy)
        loop
                var newPic : int
                % Create the new picture by blurring the old picture
        	newPic := Pic.Blur (oldPic, 10)
        	% Free the old picture so we don't run out of memory
    		Pic.Free (oldPic)
                Pic.Draw (newPic, 0, 0, picCopy)
                delay (300)
                oldPic := newPic
        end loop

        
## Execute
By precalculating and saving the results of the blurred picture, youcan produce a visual effect where an object seems to come into focus.The program below blurs an image, saving each step.  It then draws the images in reverse order, making it appear as if the imageis becoming successively sharper.




## Status
Exported qualified.

This means that you can only call the function by calling **Pic.Blur**, not by calling **Blur**.

