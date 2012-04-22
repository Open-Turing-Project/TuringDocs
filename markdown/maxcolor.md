
#maxcolor

##Syntax
**maxcolor** : **int**



##Description
The **maxcolor** function is used to determine the maximum color number for the current mode of the screen. The alternate spelling is **maxcolour**.



##Example
This program outputs the maximum color number.


        setscreen ("graphics")
        
        put "The maximum color number is ", maxcolor
##Details
The screen should be in a "_screen_"_ _or "_graphics_" mode. If it is not, it will automatically be set to "_screen_" mode. See **setscreen** for details.
For IBM PC compatibles in "_screen_"_ _mode, **maxcolor** = 15. For the default IBM PC compatible "_graphics_" mode (CGA), **maxcolor** = 3.



##See also
**[drawdot.html](drawdot)** and **palette** for examples of the use of **[](maxcolor)**. See the **[color.html](color)** [procedure.html](procedure) which is used for setting the currently active [color.html](color).


