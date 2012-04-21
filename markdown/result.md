
#result

##Syntax
A *resultStatement* is:
 **result** *expn*



##Description
A **result** statement, which must appear only in a **function**, is used to provide the value of the function.



##Example
This function doubles its parameter.


        function double ( x : real ) : real
            result 2 * x
        end double
        put double ( 5.3 )      % This outputs 10.6
##Example
This function finds the position of a name in a list.


        function find ( a : array 1 .. 100 of string ) : int
            for i : 1 .. 100
                if a ( i ) = name then
                    result i
                end if
            end for
        end find
##Details
The execution of a **result** statement computes the value of the expression (*expn*) and terminates the function, returning the value as the value of the function.
The expression must be assignable to the result type of the function, for example, in *double*, 2**x* is assignable to **real**. (See the *assignmentStatement* for the definition of assignable.)
A function must terminate by executing a **result** statement and not by reaching the end of the function.


