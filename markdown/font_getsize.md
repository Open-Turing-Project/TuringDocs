
#Font.GetSize

##Syntax
**Font.GetSize** : **int**

##Description
**Font.GetSize** is used to get the next size in the list of available font sizes for a particular font name and style. 
**Font.StartSize** must be called before any calls to **Font.GetSize**. After that, **Font.GetSize** returns the list of sizes, one per call. When there are no more sizes, **Font.GetSize** returns 0.
Some fonts are scalable. This means that the computer can scale the fonts to fit any given size. (Under Microsoft Windows and the Apple Macintosh, TrueType and PostScript fonts are scalable with the appropriate utilities.) In this case, **Font.GetSize** returns -1.

##Example
See **Font.StartSize** for a program that lists all the fonts, styles and sizes available on the system.

##Example
An example is available that displays full information aboutthe fonts including name, styles, and point sizes.

##Status
Exported qualified.
This means that you can only call the function by calling **Font.GetSize**, not by calling **GetSize**.
