
# Pic.DrawFrames

## Syntax
**Pic.DrawFrames** (_picIds_ : **array** 1 .. * **of int**, _x_, _y_, _mode_ : **int**,       _numFrames_, _delayBetweenFrames_ : **int**, _eraseAfter_ : **boolean**)

## Description
**Pic.DrawFrames** is used to draw a set of pictures stored inan array of **int**s.  The pictures are displayed one at a time,and there is a delay of _delayBetweenFrames_ millisecondsbetween frames. The _x_, _y_, and _mode_ parametersare the same as in **[Pic.Draw](pic_draw.html)**. The_numFrames_ parameter specifies the number of frames to bedrawn (the _picIds_ array must be at least this big).  The_eraseAfter_ parameter specifies whether the last frame of theanimation should be left on the Run window when the call finishes.  If _eraseAfter_ is set to **true**, then the background is restored after the last picture has been drawn and _delayBetweenFrames_ milliseconds has passed.


## Details
GIF files can contain multiple frames (pictures).  Animated GIFs function by each frame in the GIF one after another with a delaybetween them.

Turing allows users to load multiple frame GIF images into a seriesof pictures into an array using the **[Pic.FileNewFrames](pic_filenewframes.html)** procedure.  The user can determine how many frames are found in the GIF file using **[Pic.Frames](pic_frames.html)**.  The frames can be sequentially displayed using either **[Pic.DrawFrames]()** or **[Pic.DrawFramesBack](pic_drawframesback.html)** which display the images one at a time.(**[Pic.DrawFrames]()** returns once all the images have been displayed, **[Pic.DrawFramesBack](pic_drawframesback.html)** returns immediately allowing the program to continue execution while the frames are being displayed.

**[Pic.Frames](pic_frames.html)** is a function which returns the number of frames found in the GIF.  If it is used on a GIF that does not contain multiple images, or on a non-GIF image file, it returns 1.


## Example
The program loads a multiple frame GIF called "globe.gif" and displays it.
        % Determine the number of frames in "globe.gif"
        var numFrames := Pic.Frames ("globe.gif")
        % Load the picture
        var delayTime : int
        var pics : array 1 .. numFrames of int

	Pic.FileNewFrames ("globe.gif", pics, delayTime)
	Pic.DrawFrames (pics, 10, 10, picCopy, numFrames, 50, false)
	for i : 1 .. numFramesPic.Free (pics (i))
	end for
    
## Status
Exported qualified.

This means that you can only call the function by calling **Pic.DrawFrames**, not by calling **DrawFrames**.


## See also
**[Pic.Frames](pic_frames.html)** for information on howto determine the number of frames in a GIF image.

**[Pic.FileNewFrames](pic_filenewframes.html)** for informationon how to load a GIF image with multiple frames into an array of **int**s.

**[Pic.DrawFramesBack](pic_drawframesback.html)** for information on how to sequentially display the images stored in array of pictures while continuing to execute the program.

