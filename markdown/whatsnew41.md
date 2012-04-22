#What's New in Turing 4.1
Turing 4.1 introduces a number of new features.  This page shows some ofthese features.- ##Sprite
The Turing **Sprite** module allows users to create animation withouthaving to worry about erasing and drawing the objects on the screen. Asprite is created from a picture, and then commands by the programto move the sprite to the desired location.  The program then automatically erases the sprite at the old location (restoring the background) and redraws it at the new location (placing it underneath"higher" sprites, if necessary).
Here is an example of a program that used sprites.  Each triangle isa sprite, and the height of each sprite appears on the sprite.  Spriteswith a height of -1 or -2 actually _behind_ the background, whichin this case is a set if green and blue bars.  Note how sprites with ahigher depth always appear above a sprite with a lower depth. 

Here is a second example of a sprite being used to animate a figuremoving across the screen.  In this case, the figure is taken from amulti-frame GIF file and the sprite module is used to make it appear tomove.

The Sprite module is fully documented **[spritemodule.html](here)**.

- ##Special Effects

Turing supports a veriety of special effects.  These are obtained by drawing a picture (obtained using the**[pic_new.html](Pic.New)**, **[pic_filenew.html](Pic.FileNew)**, or the new **[pic_filenewframes.html](Pic.FileNewFrames)** functions).When the picture is drawn, the programmer can specify the transition that should be used to display the new picture.  These transitions canincludes wipes, slides, a growing image, fade-ins, and so on.
Here is an example of a program that demonstrates many of thesetransitions.

The different transitions are fully documented **[pic_drawspecial.html](here)**.

- ###GIF Image support
The **[pic_filenew.html](Pic.FileNew)** command can nowread GIF files (now that the patent has expired in Canada).  GIF filescan specify a "transparent color", and this is supported by Turing.  When a GIF with a transparent color is loaded by Turing, the "transparent color" is added to the color palette (if not already present).  If the picture is displayed using the _picMerge_ mode, the "transparent color" will not be displayed. Note that the "transparent color" is a real color.  If you use the _picCopy_ mode, this color is displayed.
Here is an example of a program displaying a GIF with a transparentcolor.  In this case, the transparent color is dark blue.


- ###Multi-frame GIF Image support
Turing also supports multi-frame GIF images.  A GIF program can containmultiple images (this is how animated GIFs work).  The**[pic_filenewframes.html](Pic.FileNewFrames)** procedure.
Here is an example of a program that displays a rotating globe foundin a multi-frame GIF file using these procedures.


- ###Faster animation
Turing has been improved to speed up animation when the _picMerge_mode is used.  Speed improvements from 50% to 500% have been reported.

- ###Other graphic routines
Turing now includes the **[pic_blend.html](Pic.Blend)**function to blend two pictures together and the **[pic_blur.html](Pic.Blur)** function to take an existingpicture and make it blurry.
