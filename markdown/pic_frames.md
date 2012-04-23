
# Pic.Frames

## Syntax
**Pic.Frames** (_pathName_ : **string**) : **int**

## Description
**Pic.Frames** is used to determine the number of frames found in a multiple frame GIF file.


## Details
GIF files can contain multiple frames (pictures).  Animated GIFs function by each frame in the GIF one after another with a delaybetween them.

Turing allows users to load multiple frame GIF images into a seriesof pictures into an array using the **[Pic.FileNewFrames](pic_filenewframes.html)** procedure.  The user can determine how many frames are found in the GIF file using **[Pic.Frames]()**.  The frames can be sequentially displayed using either **[Pic.DrawFrames](pic_drawframes.html)** or **[Pic.DrawFramesBack](pic_drawframesback.html)** which display the images one at a time.(**[Pic.DrawFrames](pic_drawframes.html)** returns once all the images have been displayed, **[Pic.DrawFramesBack](pic_drawframesback.html)** returns immediately allowing the program to continue execution while the frames are being displayed.

**[Pic.Frames]()** is a function which returns the number of frames found in the GIF.  If it is used on a GIF that does not contain multiple images, or on a non-GIF image file, it returns 1.


## Example
The program loads a multiple frame GIF called "globe.gif" and displays it.

        % Determine the number of frames in "globe.gif"
        var numFrames := Pic.Frames ("globe.gif")
        % Load the picture
        var delayTime : int
        var pics : array 1 .. numFrames of int

	Pic.FileNewFrames ("globe.gif", pics, delayTime)
	Pic.DrawFrames (pics, 10, 10, picCopy, numFrames, 50, false)
## Status
Exported qualified.

This means that you can only call the function by calling **Pic.Frames**, not by calling **Frames**.


## See also
**[Pic.FileNewFrames](pic_filenewframes.html)** for informationon how to load a GIF image with multiple frames into an array of **int**s.

**[Pic.DrawFrames](pic_drawframes.html)** for information onhow to sequentially display the images stored in array of pictures.

**[Pic.DrawFramesBack](pic_drawframesback.html)** for information on how to sequentially display the images stored in array of pictures while continuing to execute the program.

