
# post

## Syntax
An _postAssertion_ is:   **post** _trueFalseExpn_

## Description
A **post** assertion is a special form of an **assert** statement that is used in a procedure or function. It is used to give requirements that the body of the procedure or function is supposed to satisfy. These requirements are given by the _trueFalseExpn_. After the body has executed and just before the procedure or function returns, the _trueFalseExpn_ is evaluated. If it is true, all is well and execution continues. If it is false, execution is terminated with an appropriate message. See **assert** statements and **procedure** and **function** declarations for more details. See also **pre** and **invariant** assertions.


## Example
This function is supposed to produce an integer approximation of the square root of integer _i_. The post condition requires that this result, which is called _answer_, must be within a distance of 1 from the corresponding **real** number square root.

        function intSqrt ( i : int) answer : int
            pre i >= 0
            post abs ( answer - sqrt ( i ) ) <= 1
             statements to approximate square root
        end intSqrt
## Details
A **post** assertion can also be used in a module, monitor, class or process declaration to make sure that the initialization satisfies its requirements. 


## See also
**[module](module.html)** and **[process](process.html)**.

