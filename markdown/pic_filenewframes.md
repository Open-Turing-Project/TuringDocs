
# Pic.FileNewFrames

## Syntax
**Pic.FileNewFrames** (_pathName_ : **string**, **var** _picIDs_ : **array** 1 .. * **of int**, **var** _delayTime_ : **int**)

## Description
**Pic.FileNewFrames** loads multiple pictures stored in a singlemultiframe GIF image file into an array of integers.

## Details
GIF files can contain multiple frames (pictures).  Animated GIFs function by displaying each frame in the GIF one after another with a delay between them.  This delay can also be specified in the GIF file.

**Pic.FileNewFrames** reads the series of frames from the multiframe GIF file, and turns each frame into a picture.  Thepicture is then assigned to an element in the _picIDs_ array.If the array is not large enough, then an error occurs and nopictures are loaded.

**Pic.FileNewFrames** also reads the delay specified in the GIF file and sets _delayTime_ to the delay in milliseconds.  Note that many multiple frame GIF files do not specify a delay, in which case _delayTime_ will be set to 0.

In order to determine the number of frames in multiple frame GIFfile, you must use the **[Pic.Frames](pic_frames.html)**function.  This returns a number that can be used to declare thearray that will be passed to **Pic.FileNewFrames**.

        var _numFrames_ = Pic.Frames ("mypic.gif")
        var _pics_ : array 1 .. _numFrames_ of int
        var _delayTime_ : int
        Pic.FileNewFrames ("mypic.gif", _pics_, _delayTime_)

The frames can be sequentially displayed using either **Pic.DrawFrames** or **Pic.DrawFramesBack** which display the images one at a time. (**Pic.DrawFrames** returns once all the images have been displayed, **Pic.DrawFramesBack** returns immediately allowing the program to continue execution while the frames are being displayed.


## Details
GIF files can have a transparent color.  This color will be added tothe color palette, if not already present.  Thus you may notice that**maxcolor** changes after calling **Pic.FileNew** or**Pic.FileNewFrames**.  The GIF image will be be displayed withoutthe transparent color if _mode_ parameter in any of the **Pic.Draw...** procedures is set to _picMerge_.


## Details
Each picture is in the array has been allocated by the system andshould be freed separately once the program is finished with thepictures.  Failing to do so can use up the system's memory.


## Example
The program loads a multiple frame GIF called "globe.gif" and displays it.

        % Determine the number of frames in "globe.gif"
        % Create the original picture
        var numFrames := Pic.Frames ("globe.gif")
        % Load the picture
        var delayTime : int
        var pics : array 1 .. numFrames of int

        Pic.FileNewFrames ("globe.gif", pics, delayTime)
        Pic.DrawFrames (pics, 10, 10, picCopy, numFrames, 50, false)
## Status
Exported qualified.

This means that you can only call the function by calling **Pic.FileNewFrames**, not by calling **FileNewFrames**.


## See also
**[Pic.Frames](pic_frames.html)** for information on howto determine the number of frames in a GIF image.

**[Pic.DrawFrames](pic_drawframes.html)** for information onhow to sequentially display the images stored in array of pictures.

**[Pic.DrawFramesBack](pic_drawframesback.html)** for information on how to sequentially display the images stored in array of pictures while continuing to execute the program.

                        
