
# Pic.New

## Syntax
**Pic.New** (_x1_, _y1_, _x2_, _y2_ : **int**) : **int**

## Description
**Pic.New** is used to obtain a picture of a portion of the screen. The **Pic.New** procedure allocates the memory for the picture, which can be very large for pictures of large areas.The memory is freed up when the program calls **Pic.Free** with the picture ID. The picture can be used with the **Pic.Draw** and **Pic.Save**.

The picture is of the screen area defined by the rectangle (_x1_, _y1_) - (_x2_, _y2_).


## Details
If the **Pic.New** call fails, then it returns 0. Also **Error.Last** will return a non-zero value indicating the reason for the failure. **Error.LastMsg** will return a string which contains the textual version of the error.


## Example
The program draws a graphic on the screen and then draws it 50 times.

        var picID: int
        var x, y : int
        Draw.FillBox (50, 50, 150, 150, red)
        Draw.FillStar (50, 50, 150, 150, green)
        Draw.FillOval (100, 100, 30, 30, blue)
        
        picID := Pic.New (50, 50, 150, 150)
        for i : 1 .. 50
            x := Rand.Int (0, maxx)     % Random x
            y := Rand.Int (0, maxy)     % Random y
            Pic.Draw (picID, x, y, picCopy)
        end for
        Pic.Free (picID)
## Status
Exported qualified.

This means that you can only call the function by calling **Pic.New**, not by calling **New**.

