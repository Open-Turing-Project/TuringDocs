
# break

## Syntax
**break**

## Description
On systems with a debugger, the environment "pauses" when execution reaches the **break** statement. While "pausing" is environment specific, in general, the program stops execution until the user presses the "Resume" or "Continue" button. While paused, the program variables can be inspected, stack traces done, etc.


## Example


        for i : 1 .. 100
            put i
            break
        end for
