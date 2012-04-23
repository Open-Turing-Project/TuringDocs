
# Text.maxcol

## Syntax
**maxcol** : **int**

## Description
The **maxcol** function is used to determine the number of columns on the screen.


## Example
This program outputs the maximum column number.

        put "Number of columns on the screen is ", maxrow
## Details
For IBM PC compatibles as well as most UNIX dumb terminals, in "_text_" or "_screen_" mode, **maxcol** = 80. For the default IBM PC compatible "_graphics_" mode (CGA), **maxcol** = 40.


## Status
Exported unqualified.

This means that you can call the function by calling **maxcol** or by calling **Text.maxcol**.


## See also
**[Text.Locate](text_locate.html)** [procedure](procedure.html) for an example of the use of **[maxcol](maxcol.html)**.

