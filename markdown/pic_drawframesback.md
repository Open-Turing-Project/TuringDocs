
#Pic.DrawFramesBack

##Syntax
**Pic.DrawFramesBack** (*picIds* : **array** 1 .. * **of int**, *x*, *y*, *mode* : **int**,    *numFrames*, *delayBetweenFrames* : **int**, *eraseAfter* : **boolean**)

##Description
**Pic.DrawFramesBack** is very similar to **[pic_drawframes.html](Pic.DrawFrames)**.  The onlydifference is that **Pic.DrawFramesBack** returns immediatelyafter being called and program execution continues while the framesare being drawn.  This allows you to continue to draw other graphicswhile the frames are being drawn.
For example, this procedure is necessary if you want to have two sets of frames being drawn simultaneously.

##Details
If you are wish to have several sets of images displayed at the same time, you must use **Pic.DrawFramesBack** to display each setof images but the last and then use **Pic.DrawFrames** to displaythe last set so that Turing will wait until they are completed before continuing execution.
If you want to draw the same set of frames continuously, do not use**Pic.DrawFramesBack**.
**for** *i* : 1 .. 20    **Pic.DrawFrames** (*pics*, 10, 10, *picCopy*, 10, 50, **false**)    % Do not use Pic.DrawFramesBack in the previous statement**end for**
If you do, Turing will attempt to run each of the calls at the sametime, and the animation will appear to only run once.

##Details
GIF files can contain multiple frames (pictures).  Animated GIFs function by each frame in the GIF one after another with a delaybetween them.
Turing allows users to load multiple frame GIF images into a seriesof pictures into an array using the **[pic_filenewframes.html](Pic.FileNewFrames)** procedure.  The user can determine how many frames are found in the GIF file using **[pic_frames.html](Pic.Frames)**.  The frames can be sequentially displayed using either **[pic_drawframes.html](Pic.DrawFrames)** or **[](Pic.DrawFramesBack)** which display the images one at a time.(**[pic_drawframes.html](Pic.DrawFrames)** returns once all the images have been displayed, **[](Pic.DrawFramesBack)** returns immediately allowing the program to continue execution while the frames are being displayed.
**[pic_frames.html](Pic.Frames)** is a function which returns the number of frames found in the GIF.  If it is used on a GIF that does not contain multiple images, or on a non-GIF image file, it returns 1.

##Example
The program loads a multiple frame GIF called "globe.gif" and displays it.
        % Determine the number of frames in "globe.gif"
        var numFrames := Pic.Frames ("globe.gif")
        % Load the picture
        var delayTime : int
        var pics : array 1 .. numFrames of int

	Pic.FileNewFrames ("globe.gif", pics, delayTime)
	for i : 1 .. 50
	    Pic.DrawFramesBack (pics, 10, 10, picMerge, numFrames, 50, false)
	    Pic.DrawFramesBack (pics, 20 + Pic.Width (pics(1)), 10, picMerge, numFrames, 50, false)
	    % All 50 iterations will execute at once if the next call is 
	    % Pic.DrawFramesBack, and not Pic.DrawFrames
	    Pic.DrawFrames (pics, 30 + 2 * Pic.Width (pics(1)), 10, picMerge, numFrames, 50, false)
	end for
	for i : 1 .. numFramesPic.Free (pics (i))
	end for
    
##Status
Exported qualified.
This means that you can only call the function by calling **Pic.DrawFrames**, not by calling **DrawFrames**.

##See also
**[pic_frames.html](Pic.Frames)** for information on howto determine the number of frames in a GIF image.
**[pic_filenewframes.html](Pic.FileNewFrames)** for informationon how to load a GIF image with multiple frames into an array of **int**s.
**[](Pic.DrawFramesBack)** for information on how to sequentially display the images stored in array of pictures while continuing to execute the program.
