
# maxy

## Syntax
**maxy** : **int**

## Description
The **maxy** function is used to determine the maximum value of y for the current graphics mode.


## Example
This program outputs the maximum y value.

        setscreen ("graphics")
        
        put "The maximum y value is ", maxy
## Details
The screen should be in a "_graphics_" mode;. If it is not, it will automatically be set to "_graphics_" mode. See **setscreen** for details.

For the default IBM PC compatible graphics mode (CGA), **maxy** = 199.


## See also
**[drawdot](drawdot.html)** for an example of the use of **[maxy]()** and for a diagram illustrating x and y positions. 

