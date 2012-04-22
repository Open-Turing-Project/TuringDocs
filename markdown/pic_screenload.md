
#Pic.ScreenLoad

##Syntax
**Pic.ScreenLoad** (_fileName_ : **string**, _x_, _y_, _mode_ : **int**)



##Description
**Pic.ScreenLoad **displays a picture from a file straight to the screen.
The _fileName_parameter must give the format of the file:




The _x_ and _y_ parameters set the lower left hand corner of the picture.
The _mode_ parameter has one of the following values:

_picCopy_ This draws the picture on top of what was underneath, obscuring it completely.
_picXOR_ This draws the picture XORing it with the background. In DOS, you can use this function to do animation. Drawing an object on top of itself with XOR erases it and restores the background.
_picMerge_ This draws the picture like _picCopy_ except that any occurrence of the background color in the picture is not drawn to the screen. This allows you to draw an irregularly-shaped object and draw it to the screen.
_picUnderMerge_ This draws the picture, but only where the background color was displayed underneath it. The effect of this is to make the picture appear to be displayed behind the background.




##Details
Various versions of Turing can convert different formats of files. Turing 4.1 for Windows can load BMP files and JPG files. Unfortunately, due to strictly enforced patents on the GIF compression algorithm, Turing will not implement importation of GIF pictures until the patents expire in June 2004.



##Details
At the time of writing, MacOOT supported only PICT files. Consult the release notes to find out which file formats are currently supported.



##Details
If the **Pic.ScreenLoad** fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.



##Example
The program displays a picture on the screen from the PCX file _mypic.BMP_.


        Pic.ScreenLoad ("mypic.bmp", 0, 0, picCopy)
##Status
Exported qualified.
This means that you can only call the function by calling **Pic.ScreenLoad**, not by calling **ScreenLoad**.


