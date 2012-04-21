
#or

##Syntax
*A ***or*** B*

##Description
The **or** (boolean) operator yields a result of true if at least one (or both) of the operands is true. **or** is a short circuit operator. For example, if *A* is true in *A ***or*** B* then *B *is not evaluated.

##Example

        var success : boolean := false
        var continuing := true  % the type is boolean
        
        continuing := continuing or success
##Details
*continuing* is set to **false**, if and only if, both *continuing* and *success* are **false**. Since Turing uses short circuit operators, once *continuing* is true, *success* will not be looked at.
The **or** operator can be applied to natural numbers. The result is the natural number that is the bit-wise **or** of the operands. See **nat** (natural number).

##See also
**[boolean.html](boolean)** (which discusses **[true.html](true)**/**false** values), *[explicittruefalseconstant.html](explicitTrueFalseConstant)* (which discusses the values **[true.html](true)** and **[false.html](false)**), *[precedence.html](precedence)* and *[expn.html](expn)* (expression).
