
# View.maxcolor

## Syntax
View.**maxcolor** : **int**

## Description
The **maxcolor** function is used to determine the maximum color number for the current mode of the screen. The alternate spelling is **maxcolour**.


## Example
This program outputs the maximum color number.

        setscreen ("graphics")
        
        put "The maximum color number is ", View.maxcolor
## Details
The screen should be in a "_screen_" or "_graphics_" mode. If it is not, it will automatically be set to "_screen_" mode. See **View.Set** for details.

For IBM PC compatibles in "_screen_" mode, **maxcolor** = 15. For the default IBM PC compatible "_graphics_" mode (VGA), **maxcolor** = 15.


## Details
**View.maxcolor** is identical to **RGB.maxcolor**.  It is placed here for consistency with other screen information routines.


## Status
Exported qualified.

This means that you can only call the function by calling **View.maxcolor**. Note that **RGB.maxcolor** is exported unqualified, so that one can call **maxcolor**.


## See also
**[Draw.Dot](draw_dot.html)** for examples of the use of **[maxcolor](maxcolor.html)**. See the **[Text.Color](text_color.html)** [procedure](procedure.html) which is used for setting the currently-active [color](color.html).

