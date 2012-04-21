
#Pic.Save

##Syntax
**Pic.Save** (*picID* : **int**, *fileName* : **string**)

##Description
**Pic.Save **is used to save  a picture on the screen to a file.
The *fileName*parameter must give the format of the file:
 BMP files "BMP:filename" or "filename.BMP"

##Details
Various versions of Turing can save different formats of files. Turing 4.1 for Windows can save only BMP format files, as they areloss-less and can handle 24-bit depth images.

##Details
If **Pic.Save** is passed an invalid picture ID, a fatal error occurs. If the **Pic.Save** call fails for other (non-fatal) reasons, **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.

##Example
The program draws a graphic on the screen and then saves it as a BMP file.
        var picID: int
        var x, y : int
        Draw.FillBox (50, 50, 150, 150, red)
        Draw.FillStar (50, 50, 150, 150, green)
        Draw.FillOval (100, 100, 50, 50, blue)
        
        picID := Pic.New (50, 50, 150, 150)
        Pic.Save (picID, "BMP:mypic.dat")
        Pic.Free (picID)
##Example
The following two programs save and load a file in BMP format.

        % Program to save a picture in mypic.bmp
        var picID: int
        var x, y : int
        Draw.FillBox (50, 50, 150, 150, red)
        Draw.FillStar (50, 50, 150, 150, green)
        Draw.FillOval (100, 100, 50, 50, blue)
        picID := Pic.New (50, 50, 150, 150)
        Pic.Save (picID, "mypic.bmp")
        Pic.Free (picID)        % Program to load the picture back again and draw 50 copies
        var picID: int
        var x, y : int
        
        picID := Pic.FileNew ("mypic.bmp")
        for i : 1 .. 50
            x := Rand.Int (0, maxx)     % Random x
            y := Rand.Int (0, maxy)     % Random y
            Pic.Draw (picID, x, y, picCopy)
        end for
        Pic.Free (picID)
##Status
Exported qualified.
This means that you can only call the function by calling **Pic.Save**, not by calling **Save**.
