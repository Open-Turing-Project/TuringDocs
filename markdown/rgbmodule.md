
#RGB

##Description
This unit contains the predefined constants for the basic colors and the subprograms to change the color palette.
All subprograms in the **RGB** unit are exported qualified (and thus must be prefaced with "**RGB.**"). All the color constants are exported unqualified and thus do not need the **RGB** prefix.

##Details
For a program that displays the 256 predefined colors (and their associated color numbers) in Turing, run the "Colors.t" program.

##Details
The following names can be used for colors.  They representcolor numbers and thus will not be accurate if **RGB.SetColor**has been used to change color numbers 0 through 15.
**black**, **blue**, **green**, **cyan**, **red**, **magenta**, **purple**, **brown**, **white**, **gray**, **grey**, **brightblue**, **brightgreen**, **brightcyan**, **brightred**, **brightmagenta**, **brightpurple**, **yellow**, **brightwhite**, **darkgray**, **darkgrey**
The remaining four colors represent the foreground color (blackon Windows or the Macintosh, white on a DOS system) and the background color (white on Windows or Macintosh, black on a DOSsystem).  Using these four colors allows you to write programsthat work on both Windows and DOS versions of Turing.
**colorfg**, **colourfg**, **colorbg**, **colourbg**

##Details
Turing uses a *palette* to access colors for display.  Thispalette is a list of color numbers and their associated actual color.The Turing palette starts with 256 entries (the color numbers from 0 to 255). With 16, 24, and 32-bit color displays, however, a Turing program can display thousands of colors at once. These colors, however, will all have color numbers associated with them. For example, if a Turing program loads a JPEG image, there may bethousands of colors on the screen, but the number of color numberswill stay at 256. Likewise, 16, 24, and 32-bit color displays, if you load a picture in GIF format that has a 256 colors that are different from the initial Turing color palette, they will appear in the run window.  However, they will not be added to Turing's color palette.
If you attempt to determine the color number of a particular pixel that does not match any of the colors in Turing's color palette,then Turing will return the color number of the color in the Turing palette that most closely matches that color of the pixel.

##Entry Points
[rgb_getcolor.html](**GetColor**)[rgb_getcolor.html](**GetColour**) Gets the current red, green and blue values of a specified color number.[rgb_setcolor.html](**SetColor**)[rgb_setcolor.html](**SetColour**) Sets the red, green and blue values of a specified color number.[rgb_addcolor.html](**AddColor**)[rgb_addcolor.html](**AddColour**) Creates a new color number with a specified red, green and blue value.
