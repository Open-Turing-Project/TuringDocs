
# View.maxy

## Syntax
**maxy** : **int**

## Description
The **maxy** function is used to determine the maximum value of y for the current graphics mode.


## Example
This program outputs the maximum y value.

        setscreen ("graphics")
        
        put "The maximum y value is ", maxy
## Details
The screen should be in a "_graphics_" mode. If it is not, it will automatically be set to "_graphics_" mode. See **setscreen** for details.

For the default IBM PC compatible graphics mode (CGA), **maxy** = 199.


## Status
Exported unqualified.

This means that you can call the function by calling **maxy** or by calling **View.maxy**.


## See also
**[Draw.Dot](draw_dot.html)** for an example of the use of **[maxy](maxy.html)** and for a diagram illustrating x and y positions. 

