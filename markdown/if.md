
# if

## Syntax
An _ifStatement_ is:   **if** _trueFalseExpn_ **then**     _statementsAndDeclarations_   { **elsif** _trueFalseExpn_ **then**     _statementsAndDeclarations_ }   [ **else**     _statementsAndDeclarations_ ]   **end** **if**

## Description
An **if** statement is used to choose among a set of statements (and declarations). One set (at most) is chosen and executed and then execution continues just beyond **end** **if**.

The expressions (the _trueFalseExpressions_) following the keyword **if** and each **elsif** are checked one after the other until one of them is found to be true, in which case the statements (and declarations) following the corresponding **then** are executed. If none of these expressions evaluates to true, the statements following **else** are executed. If no **else** is present and none of the expressions are true, no statements are executed and execution continues following the **end** **if**.


## Example
Output a message based on value of mark.

        if mark >= 50 then
            put "You pass"
        else
            put "You fail"
        end if
## Example
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
## Example
If _x_ is negative, change its sign.

        if x < 0 then
            x := - x
        end if
## Example
If _x_ is less than zero or greater than maxx, put a message.

        if x < 0  or x > maxx then
            put "Out of bounds!"
        end if
## Example
If the boolean _flag_ is true and _name_ is &#147;stop&#148;, put a message and return.

        if flag  and name = "stop" then
            put "Exiting routine"
            return
        end if
## Details
Several statements and declarations can appear after a particular **then**.


## See also
**[case](case.html)** statements for another way to select among statements.

