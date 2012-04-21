
#bind

##Syntax
A *bindDeclaration* is:
 **bind** [**var**] *id* **to** *variableReference*   { , [**var**] *id* **to** *variableReference* }



##Description
The **bind** declaration creates a new name (or names) for a variable reference (or references). You are allowed to change the named item only if you specify **var**. You can also bind to named non scalar constants.
While *variableReference* is bound it does not disappear in the scope.



##Example
Rename the *n*-th element of array *A* so it is called *item* and then change this element to 15.


        bind var item to A (n)
        item := 15
##Details
The scope of the identifier (*item *above) begins with the **bind** declaration and lasts to the **end** of the surrounding program or statement (or to the end of the surrounding part of a **case** or **if** statement). During this scope, a change to a subscript (*n *above) that occurs in the variable reference does not change the element to which the identifier refers.
You are not allowed to use **bind** at the outermost level of the main program (except nested inside statements such as **if**) or at the outermost level in a module.
You can also optionally use the **register** keyword to request that the bind be done using a machine register. The syntax for *bindDeclaration* is actually:
 **bind** [**var**] [**register**] *id* **to** *variableReference*  { , [**var**] [**register**] *id* **to** *variableReference *}
In the current (2002) implementation, programs are run interpretively using pseudo-code and the **register** keyword is ignored.


