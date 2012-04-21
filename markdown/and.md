
#and

##Syntax
*A* **and** *B*



##Description
The **and** (boolean) operator yields a result of true if, and only if, both operands are true. The **and** operator is a short circuit operator. For example, if *A* is false in *A ***and*** B* then *B *is not evaluated.



##Example



        var success : boolean := false
        var continuing := true      % The type is boolean
        
        continuing := continuing and success
##Details
The *continuing* variable is set to **true** if, and only if, both *continuing* and *success* are **true**. Since Turing uses short circuit operators, once *continuing* is **false**, *success* will not be looked at.
The **and** operator can also be applied to natural numbers. The result is the natural number that is the bit-wise **and** of the operands. See **nat** (natural number).



##Example
This masks out the everything but the lower two bytes of *number*.


        var number : nat := 16#ABCD
        var mask : nat := 16#FF
        put number and mask     % Outputs 205 (CD16)
##See also
**[boolean.html](boolean)** (which discusses true/false values), *[explicittruefalseconstant.html](explicitTrueFalseConstant)* (which discusses the values **[true.html](true)** and **[false.html](false)**), *[precedence.html](precedence)* and *[expn.html](expn)* (expression).


