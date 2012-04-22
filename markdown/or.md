
#or

##Syntax
_A _**or**_ B_



##Description
The **or** (boolean) operator yields a result of true if at least one (or both) of the operands is true. **or** is a short circuit operator. For example, if _A_ is true in _A _**or**_ B_ then _B _is not evaluated.



##Example



        var success : boolean := false
        var continuing := true  % the type is boolean
        
        continuing := continuing or success
##Details
_continuing_ is set to **false**, if and only if, both _continuing_ and _success_ are **false**. Since Turing uses short circuit operators, once _continuing_ is true, _success_ will not be looked at.
The **or** operator can be applied to natural numbers. The result is the natural number that is the bit-wise **or** of the operands. See **nat** (natural number).



##See also
**[boolean.html](boolean)** (which discusses **[true.html](true)**/**false** values), _[explicittruefalseconstant.html](explicitTrueFalseConstant)_ (which discusses the values **[true.html](true)** and **[false.html](false)**), _[precedence.html](precedence)_ and _[expn.html](expn)_ (expression).


