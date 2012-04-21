
#Pic.Rotate

##Syntax
**Pic.Rotate** (*picID*, *angle*, *x*, *y* : **int**) : **int**



##Description
**Pic.Rotate **is used to create a new picture by rotating an already existing picture. Rotation can either be around a specific point in the picture (often used for rotating a picure in place) or just a general rotation.
The *angle* is specified in degrees. The rotation is done in a counter-clockwise direction. The original picture is not modified by the call to **Pic.Rotate** and must still be freed when no longer used. The picture produced by **Pic.Rotate** may be a different size than the original picture.
The (*x*, *y*) point is the point around which the rotation is to take place and is relative to the picture being rotated. If it is not important to rotate the picture in place, *x* and *y* should be set to -1, which make the new picture the minimum size required to fit the rotated image.



##Details
The **Pic.Rotate** command can fail, in which case it returns 0. The **Error.LastMsg** function can then be used to obtain more information about the failure.



##Details
If *x* and *y* are set to a point in the picture (rather than 1), it is possible for parts of the original picture to be rotated off the left and bottom edge of the new picture. This occurs because **Pic.Rotate** guarantees that the point specified by  (*x*, *y*) in the original picture will be located at  (*x*, *y*) in the rotated picture. You can avoid losingparts of the picture by making certain there is a margin of backgroundcolor on the left and bottom sides of the picture.
As well, any pixels in the rotated picture that were not part of the original picture are set to the background color.

![Doc image](pic_rotate01.gif)


##Details
Rotation can be slow on older machines. Programs that are using animation should create and store all the rotated images that may be needed. Often pictures of an object at various angles are stored in an array. 



##Example
This program draws Hello on the screen rotated at 0, 45 and 90 degrees.
**Output from Program**

![Doc image](pic_rotate02.gif)

        View.Set ("graphics:200;150,nobuttonbar")
        var f : int := Font.New ("Serif:36")
        Font.Draw ("Hello", 10, 10, f, black)
        var pic : int := Pic.New (5, 5, 120, 45)
        var pic45 : int := Pic.Rotate (pic, 45, -1, -1)
        var pic90 : int := Pic.Rotate (pic, 90, -1, -1)
        Pic.Draw (pic45, 5, 50, picCopy)
        Pic.Draw (pic90, 150, 5, picCopy)
        
##Example
This program moves a spinning Hello around the screen, bouncing it off the edges of the output window. Notice that the original picture contains adequate space on the left and bottom sides to contain the rotation.


        View.Set ("graphics:300;250,nobuttonbar")
        var pic : array 0 .. 35 of int
        var f : int := Font.New ("Serif:36")
        const CTR : int := 57
        Font.Draw ("Hello", 5, 45, f, black)
        Draw.FillOval (CTR, CTR, 3, 3, brightred)
        pic (0) := Pic.New (0, 0, 115, 115)
        cls
        for angle : 1 .. 35
            pic (angle) := Pic.Rotate (pic (0), angle * 10, CTR, CTR)
        end for
        
        var x : int := CTR
        var y : int := CTR
        var dx : int := 1
        var dy : int := 1
        loop
            for angle : 0 .. 35
                Pic.Draw (pic (angle), x  - CTR, y - CTR, picCopy)
                if x + dx < CTR or x + dx > maxx - CTR then
                    dx := dx
                end if
                if y + dy < CTR or y + dy > maxy - CTR then
                    dy := dy
                end if
                x += dx
                y += dy
                delay (50)
            end for
        end loop
##Details
Note that the rotated picture is a newly created picture. When it is no longer needed, its memory should be released by using **Pic.Free**.



##Status
Exported qualified.
This means that you can only call the function by calling **Pic.Rotate**, not by calling **Rotate**.


