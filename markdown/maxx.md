
#maxx

##Syntax
**maxx** : **int**

##Description
The **maxx** function is used to determine the maximum value of x for the current graphics mode.

##Example
This program outputs the maximum x value.
        setscreen ("graphics")
        
        put "The maximum x value is ", maxx
##Details
The screen should be in a "*graphics*" mode. If it is not, it will automatically be set to "*graphics*" mode. See **setscreen** for details.
For the default IBM PC compatible graphics mode (CGA), **maxx** = 319.

##See also
**[drawdot.html](drawdot)** for an example of the use of **[](maxx)** and for a diagram illustrating x and y positions. 
