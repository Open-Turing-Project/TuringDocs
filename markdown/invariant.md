
#invariant

##Syntax
An _invariantAssertion_ is:

**invariant** _trueFalseExpn_




##Description
An **invariant** assertion is a special form of an **assert** statement that is used only in **loop** and **for** statements and in modules, monitors, and classes. It is used to make sure that a specific requirement is met. This requirement is given by the _trueFalseExpn_. The _trueFalseExpn _is evaluated. If it is true, all is well and execution continues. If it is false, execution is terminated with an appropriate message. See **assert**, **loop** and **for** statements and the **module** declarations for more details.



##Example
This program uses an invariant in a **for** loop. The invariant uses the function _nameInList _to specify that a key has not yet been found in an array of names.


        var name : array 1 .. 100 of string
        var key : string
         input name and key 
        
        function nameInList ( n : int) : boolean
            for i : 1 .. n
                if key = name ( i ) then
                    result true
                end if
            end for
            result false
        end nameInList
        
        for j : 1 .. 100
            invariant not nameInList ( j - 1)
            if key = name ( j) then
                put "Found name at ", j
                exit
            end if
        end loop
