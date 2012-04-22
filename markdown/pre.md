
#pre

##Syntax
An _preAssertion _is:

**pre** _trueFalseExpn_




##Description
A **pre** assertion is a special form of an **assert** statement that is used at the beginning of a procedure or function. It is used to give requirements that the caller of the procedure or functions is supposed to satisfy. These requirements are given by the _trueFalseExpn_. The _trueFalseExpn _is evaluated. If it is true, all is well and execution continues. If it is false, execution is terminated with an appropriate message. See **assert** statements and **procedure** and **function** declarations for more details. See also **post** and **invariant** assertions.



##Example
This function computes the average of _n values_. Its **pre** condition requires that _n_ must be strictly positive, to avoid the possibility of dividing by zero when computing the average.


        function average ( a : array 1 .. * of real, n : int) : real
            pre n > 0
            var sum : real := 0
            for i : 1 .. n
                sum := sum + a ( i )
            end for
            result sum / n
        end average
##Details
A **pre** assertion can also be used in a **module**, **monitor**, **class** or **process** declaration to make sure that requirements for initialization are met.



##See also
**[module.html](module)** and **[process.html](process)**.


