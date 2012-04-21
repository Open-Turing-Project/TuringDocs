
#return

##Syntax
A *returnStatement* is:
 **return**



##Description
A **return** statement terminates the **procedure** (or main program) in which it appears. Ordinarily, a procedure (or main program) terminates by reaching its end; the **return** statement is used to cause early termination.



##Example
This procedure takes no action if the *errorHasOccurred *flag has been set to true.


        procedure double
            if errorHasOccurred then
                return  % Terminate this procedure
            end if
             handle usual case in this procedure 
        end double
##Details
A **return** must not appear as a statement in (the outermost level of) a module, nor can it appear in a **function**.


