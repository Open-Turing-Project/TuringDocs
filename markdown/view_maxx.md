
# View.maxx

## Syntax
**maxx** : **int**

## Description
The **maxx** function is used to determine the maximum value of x for the current graphics mode.


## Example
This program outputs the maximum x value.

        setscreen ("graphics")
        
        put "The maximum x value is ", maxx
## Details
The screen should be in a "_graphics_" mode. If it is not, it will automatically be set to "_graphics_" mode. See **setscreen** for details.

For the default IBM PC compatible graphics mode (CGA), **maxx** = 319.


## Status
Exported unqualified.

This means that you can call the function by calling **maxx** or by calling **View.maxx**.


## See also
**[Draw.Dot](draw_dot.html)** for an example of the use of **[maxx](maxx.html)** and for a diagram illustrating x and y positions. 

