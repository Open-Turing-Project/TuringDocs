
# Pic.ScreenSave

## Syntax
**Pic.ScreenSave** (_x1_, _y1_, _x2_, _y2_ : **int**, _fileName_ : **string**)

## Description
**Pic.ScreenSave** saves a portion of the screen into a file in a format specified by the file name.

The picture saved to the file is the portion of the screen defined by the rectangle (_x1_, _y1_) - (_x2_, _y2_).

The _fileName_parameter must give the format of the file:


BMP files   "BMP:filename" or "filename.BMP"  



## Details
Various versions of Turing can save different formats of files. Turing 4.1 for Windows can save BMP. Unfortunately, due to strictly enforced patents on the GIF compression algorithm, Turing will not implement saving of GIF pictures until the patents expire in June 2004.


## Details
If the **Pic.ScreenSave** fails, then **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.


## Example
The program draws a graphic and saves it as a PICT file called _draw_.

        Draw.FillBox (50, 50, 150, 150, red)
        Draw.FillStar (50, 50, 150, 150, green)
        Draw.FillOval (100, 100, 50, 50, blue)
        
        picID := Pic.ScreenSave (50, 50, 150, 150, "PICT:draw")
## Status
Exported qualified.

This means that you can only call the function by calling **Pic.ScreenSave**, not by calling **ScreenSave**.

