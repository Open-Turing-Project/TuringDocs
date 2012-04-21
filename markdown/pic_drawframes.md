
#Pic.DrawFrames

##Syntax
**Pic.DrawFrames** (*picIds* : **array** 1 .. * **of int**, *x*, *y*, *mode* : **int**,    *numFrames*, *delayBetweenFrames* : **int**, *eraseAfter* : **boolean**)

##Description
**Pic.DrawFrames** is used to draw a set of pictures stored inan array of **int**s.  The pictures are displayed one at a time,and there is a delay of *delayBetweenFrames* millisecondsbetween frames. The *x*, *y*, and *mode* parametersare the same as in **[pic_draw.html](Pic.Draw)**. The*numFrames* parameter specifies the number of frames to bedrawn (the *picIds* array must be at least this big).  The*eraseAfter* parameter specifies whether the last frame of theanimation should be left on the Run window when the call finishes.  If *eraseAfter* is set to **true**, then the background is restored after the last picture has been drawn and *delayBetweenFrames* milliseconds has passed.

##Details
GIF files can contain multiple frames (pictures).  Animated GIFs function by each frame in the GIF one after another with a delaybetween them.
Turing allows users to load multiple frame GIF images into a seriesof pictures into an array using the **[pic_filenewframes.html](Pic.FileNewFrames)** procedure.  The user can determine how many frames are found in the GIF file using **[pic_frames.html](Pic.Frames)**.  The frames can be sequentially displayed using either **[](Pic.DrawFrames)** or **[pic_drawframesback.html](Pic.DrawFramesBack)** which display the images one at a time.(**[](Pic.DrawFrames)** returns once all the images have been displayed, **[pic_drawframesback.html](Pic.DrawFramesBack)** returns immediately allowing the program to continue execution while the frames are being displayed.
**[pic_frames.html](Pic.Frames)** is a function which returns the number of frames found in the GIF.  If it is used on a GIF that does not contain multiple images, or on a non-GIF image file, it returns 1.

##Example
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
    
##Status
Exported qualified.
This means that you can only call the function by calling **Pic.DrawFrames**, not by calling **DrawFrames**.

##See also
**[pic_frames.html](Pic.Frames)** for information on howto determine the number of frames in a GIF image.
**[pic_filenewframes.html](Pic.FileNewFrames)** for informationon how to load a GIF image with multiple frames into an array of **int**s.
**[pic_drawframesback.html](Pic.DrawFramesBack)** for information on how to sequentially display the images stored in array of pictures while continuing to execute the program.
