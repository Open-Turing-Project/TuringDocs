
# true

## Syntax
**true**

## Description
A **boolean** (true/false) variable can be either **true** or **false** (see **boolean** type).


## Example


        var passed : boolean := true
        var mark : int
        for i : 1 .. 10
            get mark
            passed := passed and mark >= 60
        end for
        if passed = true then
            put "You passed all ten subjects"
        end if
## Details
The line **if** _passed_=**true** **then** can be simplified to **if** _passed_ **then** with no change to the meaning of the program.

