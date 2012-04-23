
#exit

##Syntax
An _exitStatement_ is one of:


(a) **exit** **when** trueFalseExpn
(b) **exit**



##Description
An **exit** statement is used to stop the execution of a **loop** or **for** statement. Form (a) is the most common. Here, the true/false expression is evaluated. If it is true, the loop is terminated and execution jumps down and continues just beyond **end** **loop** or **end** **for**. If it is false, the loop keeps on repeating. Form (b) always causes the loop to terminate. This form is almost always used inside another conditional statement such as **if**.


##Example
Input names until finding Jones.

        var name : string
        loop
            get name
            exit when name = "Jones"
        end loop
##Details
Exit statements must occur only inside **loop** or **for** statements. An exit takes you out of the closest surrounding **loop** or **for**. The only other ways to terminate a **loop** or **for** is by **return** (in a procedure or in the main program, in which case the entire procedure or main program is terminated) or by **result** (in a function, in which case the entire function is terminated and a result value must be supplied).

The form "**exit** **when** _trueFalseExpn_" is equivalent to "**if** _trueFalseExpn_ **then** **exit** **end** **if**".

