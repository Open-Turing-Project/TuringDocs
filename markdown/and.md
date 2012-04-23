
#and

##Syntax
_A_ **and** _B_


##Description
The **and** (boolean) operator yields a result of true if, and only if, both operands are true. The **and** operator is a short circuit operator. For example, if _A_ is false in _A_ **and** _B_ then _B_ is not evaluated.


##Example


        var success : boolean := false
        var continuing := true      % The type is boolean
        
        continuing := continuing and success
##Details
The _continuing_ variable is set to **true** if, and only if, both _continuing_ and _success_ are **true**. Since Turing uses short circuit operators, once _continuing_ is **false**, _success_ will not be looked at.

The **and** operator can also be applied to natural numbers. The result is the natural number that is the bit-wise **and** of the operands. See **nat** (natural number).


##Example
This masks out the everything but the lower two bytes of _number_.

        var number : nat := 16#ABCD
        var mask : nat := 16#FF
        put number and mask     % Outputs 205 (CD16)
##See also
**[boolean.html](boolean)** (which discusses true/false values), _[explicittruefalseconstant.html](explicitTrueFalseConstant)_ (which discusses the values **[true.html](true)** and **[false.html](false)**), _[precedence.html](precedence)_ and _[expn.html](expn)_ (expression).

