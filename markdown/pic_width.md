
#Pic.Width

##Syntax
**Pic.Width** (_picID_ : **int**) : **int**



##Description
**Pic.Width **returns the width in pixels of the picture represented by _picID_.
This function is often used in conjunction with **Pic.Height** to obtain the dimensions of a picture loaded using **Pic.FileNew**.



##Example
The program draws loads a picture from the file _lighthouse.jpg_ and proceeds to tile the entire run window with copies of the picture..


        var pic : int := Pic.FileNew ("lighthouse.jpg")
        var width : int := Pic.Width (pic)
        var height : int := Pic.Height (pic)
        var x, y : int := 0
        loop
            exit when y > maxy
            loop
                exit when x > maxx
                Pic.Draw (pic, x, y, picCopy)
                x := x + width
            end loop
            x := 0
            y := y + height
        end loop
##Status
Exported qualified.
This means that you can only call the function by calling **Pic.Width**, not by calling **Width**.



##See also
**[pic_height.html](Pic.Height)** to obtain a picture's height and **[pic_filenew.html](Pic.FileNew)** to load a picture from a graphics file.


