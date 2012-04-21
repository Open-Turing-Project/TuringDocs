
#maxy

##Syntax
**maxy** : **int**



##Description
The **maxy** function is used to determine the maximum value of y for the current graphics mode.



##Example
This program outputs the maximum y value.


        setscreen ("graphics")
        
        put "The maximum y value is ", maxy
##Details
The screen should be in a "*graphics*" mode;. If it is not, it will automatically be set to "*graphics*" mode. See **setscreen** for details.
For the default IBM PC compatible graphics mode (CGA), **maxy** = 199.



##See also
**[drawdot.html](drawdot)** for an example of the use of **[](maxy)** and for a diagram illustrating x and y positions. 


