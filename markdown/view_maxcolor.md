
#View.maxcolor

##Syntax
View.**maxcolor** : **int**



##Description
The **maxcolor** function is used to** **determine the maximum color number for the current mode of the screen. The alternate spelling is **maxcolour**.



##Example
This program outputs the maximum color number.


        setscreen ("graphics")
        
        put "The maximum color number is ", View.maxcolor
##Details
The screen should be in a "*screen*"* *or "*graphics*" mode. If it is not, it will automatically be set to "*screen*" mode. See **View.Set **for details.
For IBM PC compatibles in "*screen*"* *mode, **maxcolor** = 15. For the default IBM PC compatible "*graphics*" mode (VGA), **maxcolor** = 15.



##Details
**View.maxcolor** is identical to **RGB.maxcolor**.  It is placed here for consistency with other screen information routines.



##Status
Exported qualified.
This means that you can only call the function by calling **View.maxcolor**. Note that **RGB.maxcolor** is exported unqualified, so that one can call **maxcolor**.



##See also
**[draw_dot.html](Draw.Dot)** for examples of the use of **[maxcolor.html](maxcolor)**. See the **[text_color.html](Text.Color)** [procedure.html](procedure) which is used for setting the currently-active [color.html](color).


