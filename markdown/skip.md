
#skip

##Syntax
**skip**



##Description
Using **skip** as an output item in a **put** statement causes the current output line to be ended and a new line to be started.



##Example
This example, _To be_ is output on one line and _Or not to be_ on the next.


        put "To be", skip, "Or not to be"
##Details
Using **skip** is equivalent to outputting the newline character "\n".


