
#if

##Syntax
An *ifStatement* is:
 **if** *trueFalseExpn* **then**  *statementsAndDeclarations* { **elsif** *trueFalseExpn* **then**  *statementsAndDeclarations* } [ **else**  *statementsAndDeclarations* ] **end** **if**



##Description
An **if** statement is used to choose among a set of statements (and declarations). One set (at most) is chosen and executed and then execution continues just beyond **end** **if**.
The expressions (the *trueFalseExpressions*) following the keyword **if** and each **elsif** are checked one after the other until one of them is found to be true, in which case the statements (and declarations) following the corresponding **then** are executed. If none of these expressions evaluates to true, the statements following **else** are executed. If no **else** is present and none of the expressions are true, no statements are executed and execution continues following the **end** **if**.



##Example
Output a message based on value of mark.


        if mark >= 50 then
            put "You pass"
        else
            put "You fail"
        end if
##Example
Output A, B, C, D or F depending on mark.


        if mark >= 80 then
            put "A"
        elsif mark >= 70 then
            put "B"
        elsif mark >= 60 then
            put "C"
        elsif mark >= 50 then
            put "D"
        else
            put "F"
        end if
##Example
If *x *is negative, change its sign.


        if x < 0 then
            x := - x
        end if
##Example
If *x *is less than zero or greater than maxx, put a message.


        if x < 0  or x > maxx then
            put "Out of bounds!"
        end if
##Example
If the boolean *flag* is true and *name* is stop, put a message and return.


        if flag  and name = "stop" then
            put "Exiting routine"
            return
        end if
##Details
Several statements and declarations can appear after a particular **then**.



##See also
**[case.html](case)** statements for another way to select among statements.


