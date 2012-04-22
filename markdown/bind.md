
#bind

##Syntax
A _bindDeclaration_ is:

**bind** [**var**] _id_ **to** _variableReference_ 
{ , [**var**] _id_ **to** _variableReference_ }




##Description
The **bind** declaration creates a new name (or names) for a variable reference (or references). You are allowed to change the named item only if you specify **var**. You can also bind to named non scalar constants.
While _variableReference_ is bound it does not disappear in the scope.



##Example
Rename the _n_-th element of array _A_ so it is called _item_ and then change this element to 15.


        bind var item to A (n)
        item := 15
##Details
The scope of the identifier (_item_ above) begins with the **bind** declaration and lasts to the **end** of the surrounding program or statement (or to the end of the surrounding part of a **case** or **if** statement). During this scope, a change to a subscript (_n_ above) that occurs in the variable reference does not change the element to which the identifier refers.
You are not allowed to use **bind** at the outermost level of the main program (except nested inside statements such as **if**) or at the outermost level in a module.
You can also optionally use the **register** keyword to request that the bind be done using a machine register. The syntax for _bindDeclaration_ is actually:



{ , [**var**] [**register**] _id_ **to** _variableReference_ }

In the current (2002) implementation, programs are run interpretively using pseudo-code and the **register** keyword is ignored.


