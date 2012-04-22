
#Pic.FileNew

##Syntax
**Pic.FileNew** (_fileName_ : **string**) : **int**



##Description
**Pic.FileNew **is used to obtain a picture from a file. The **Pic.FileNew** procedure allocates the memory for the picture, which can be very large for pictures of large areas. The memory is freed up when the program calls **Pic.Free** with the picture ID. The picture can be used with the **Pic.Draw** and **Pic.Save**.
The _fileName_parameter must give the format of the file:








##Details
Various versions of Turing can convert different formats of files. Turing 4.1 for Windows can load BMP, GIF and JPG files.



##Details
For, multi-frame GIF files (GIF files that have several frames orpictures and are used for animation), **Pic.FileNew** will onlyload the first frame.  See the **Pic.FileNewFrames** and**Pic.Frame** for information on loading and displayinga multi-frame GIF file.



##Details
If the **Pic.FileNew** call fails, then it returns 0. Also **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.



##Example
The program reads a graphic from the file _mypic.bmp_ and then draws it 50 times.


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
This means that you can only call the function by calling **Pic.FileNew**, not by calling **FileNew**.


