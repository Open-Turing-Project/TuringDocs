
# Pic

## Description
This unit contains the predefined subprograms that deal with taking pictures of part of the screen, displaying them and moving pictures from file to screen and back.

All routines in the **Pic** unit are exported qualified (and thus must be prefaced with "**Pic.**").


## Entry Points

[**New**](pic_new.html)   Creates a picture from a specified portion of the screen.  
[**Draw**](pic_draw.html)   Draws a picture on the screen.  
[**DrawSpecial**](pic_drawspecial.html)   Draws a picture on the screen using special effects.  
[**DrawSpecialBack**](pic_drawspecialback.html)   Draws a picture on the screen while continuing execution using special effects.  
[**Free**](pic_free.html)   Frees up the picture created by using **New** or **FileNew**.  
[**FileNew**](pic_filenew.html)   Creates a picture from a file in an allowed format.  
[**Save**](pic_save.html)   Saves a picture as a file in an allowed format.  
[**ScreenLoad**](pic_screenload.html)   Displays a file in an allowed format on the screen directly.  
[**ScreenSave**](pic_screensave.html)   Saves a specified portion of the screen as a file in an allowed format.  
[**Rotate**](pic_rotate.html)   Creates a new picture by rotating an existing picture.  
[**Scale**](pic_scale.html)   Creates a new picture by scaling an existing picture.  
[**Flip**](pic_flip.html)   Creates a new picture by flipping an existing picture upside-down.  
[**Mirror**](pic_mirror.html)   Creates a new mirror-image of an existing picture.  
[**Blend**](pic_blend.html)   Creates a new picture by blending two existing pictures together.  
[**Blur**](pic_blur.html)   Creates a new picture by blurring an existing pictures.  
[**Width**](pic_width.html)   Returns the width of a picture.  
[**Height**](pic_height.html)   Returns the height of a picture.  
[**Frames**](pic_frames.html)   Returns the the number of frames in a multi-frame GIF file.  
[**FileNewFrames**](pic_filenewframes.html)   Creates an array of pictures from a multi-frame GIF file.  
[**DrawFrames**](pic_drawframes.html)   Draws a series of pictures on the screen in sequence while continuing execution.  
[**DrawFramesBack**](pic_drawframesback.html)   Draws a series of pictures on the screen in sequence.  
[**SetTransparentColor**](pic_settransparentcolor.html)   Sets the color to be ignored when using `picMerge` mode.  
[**SetTransparentColour**](pic_settransparentcolor.html)   Sets the color to be ignored when using `picMerge` mode.  
