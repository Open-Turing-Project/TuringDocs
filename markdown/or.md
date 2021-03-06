
# or

## Syntax
_A_ **or** _B_

## Description
The **or** (boolean) operator yields a result of true if at least one (or both) of the operands is true. **or** is a short circuit operator. For example, if _A_ is true in _A_ **or** _B_ then _B_ is not evaluated.


## Example


        var success : boolean := false
        var continuing := true  % the type is boolean
        
        continuing := continuing or success
## Details
_continuing_ is set to **false**, if and only if, both _continuing_ and _success_ are **false**. Since Turing uses short circuit operators, once _continuing_ is true, _success_ will not be looked at.

The **or** operator can be applied to natural numbers. The result is the natural number that is the bit-wise **or** of the operands. See **nat** (natural number).


## See also
**[boolean](boolean.html)** (which discusses **[true](true.html)**/**false** values), _[explicitTrueFalseConstant](explicittruefalseconstant.html)_ (which discusses the values **[true](true.html)** and **[false](false.html)**), _[precedence](precedence.html)_ and _[expn](expn.html)_ (expression).

